#include <iostream>
#include <map>
#include <string>


using namespace std;
int main()
{
	
	map<string,string> c32to64;


	c32to64["%eax"]="%rax";
	c32to64["%ebx"]="%rbx";
	c32to64["%ecx"]="%rcx";
	c32to64["%edx"]="%rdx";
	c32to64["%ebp"]="%rbp";
	c32to64[" 8"]=" 16";
	c32to64["%esp"]="%rsp";
	c32to64["-8"]="-16";
	c32to64["subl"]="subq";
	c32to64["edi"]="rdi";
	c32to64["pushl"]="pushq";
	

	string line;

	while(getline(cin , line)){

		map<string,string>::iterator i1=c32to64.begin();

		while(i1!=c32to64.end()){

			int pos=line.find(i1->first);

			if(pos>=0)line.replace(pos , (i1->first).size() , i1->second);

			i1++;
		}

		cout<<line;
		cout<<endl;
	}
	return 0;
}