#include <iostream>
#include <getopt.h>

#include "bioparser/fastq_parser.hpp"

#include "config.h"

using namespace std; 

struct Sequence {  // or any other name
  string name; 
  string data; 
  string quality; 
  public:
  Sequence(  // required arguments
    const char* name, std::uint32_t name_len,
    const char* data, std::uint32_t data_len ,
    const char* quality, std::uint32_t quality_len) :
      name(name, name_len), 
      data(data, data_len), 
      quality(data, quality_len){}
}; 

static struct option long_options[] = {
  /* These options don’t set a flag.
	 We distinguish them by their indices. */
  {"version", no_argument,       0, 'v'},
  {"help",  no_argument,       0, 'h'},
  {0, 0, 0, 0}
};

void ProjectVersion(){
    cerr << "v" << PROJECT_VER << endl;
}; 

void Help(){
    cerr << "some help command.." << endl; 
}; 

int main(int argc, char **argv){
  int option_index = 0;
  int c=0; 
  while ((c = getopt_long (argc, argv, "vh", long_options, &option_index)) != -1){
  switch (c) {
    case 'v':
      ProjectVersion(); 
      break;

    case 'h':
      Help(); 
      break;
    case '?':
      /* getopt_long already printed an error message. */
      break;

    default:
      //abort();
      break;	
  }
}
	
	/* Print any remaining command line arguments (not options). */
if (optind < argc){	
  auto p = bioparser::Parser<Sequence>::Create<bioparser::FastqParser>(argv[optind]);
  // parse in chunks
  std::vector<std::unique_ptr<Sequence>> s;
  std::size_t sum = 0, num = 0;
  while (true) {
    auto c = p->Parse(1ULL << 30);  // 1 GB
    if (c.empty()) {
      break;
    }
    num += c.size();
    for (const auto& it : c) {
      sum += it->data.size();
    }
  }
  std::cerr << sum / static_cast<double>(num) << std::endl;
  }

}