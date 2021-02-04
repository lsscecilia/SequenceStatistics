#include <iostream>
#include "bioparser/fastq_parser.hpp"

using namespace std; 

struct Sequence {  // or any other name
 public:
  Sequence(  // required arguments
      const char*, std::uint32_t,
      const char*, std::uint32_t,
      const char*, std::uint32_t) {
    // implementation
  }
}

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
    while ((c = getopt_long (argc, argv, "vh",
				   long_options, &option_index)) != -1){
	
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
        while (true) {
        auto c = p->Parse(1ULL << 30);  // 1 GB
        if (c.empty()) {
            break;
        }
        s.insert(
            s.end(),
            std::make_move_iterator(c.begin()),
            std::make_move_iterator(c.end()));
        }

        //get sum of reads
        int sum=0; 
        for (int i=0; i<s.size(); i++){
            sum += s[i]->data.length(); 
        }   

        cout << "Number of reads: " << s.size() << endl; 
        cout << "sum of all reads: " << sum << endl;  ; 
        cout << "Average length of reads: " << sum/s.size() << endl; 
    }

}