//Exercises from Chapter 3:
// http://www.lmpt.univ-tours.fr/~volkov/C++.pdf

#include <iostream>
#include <string>
#include <cmath>
using namespace std;

void sqrtString(double);

int main(){
    string userDefNum;

    std::cout << "User-defined Number: ";
    getline(cin, userDefNum);
   
    std::cout << "Number\tSquare Root\n";
    std::cout << "-------------------------\n";

    sqrtString(4);
    sqrtString(12.25);
    sqrtString(0.0121);
    sqrtString(stod(userDefNum));

    
     
    
    return 0;
}

void sqrtString(double num){
    std::cout << num << "\t" << sqrt(num) << endl;
}
