#include <iostream>
#include <bitset>
#include <climits>
#include <math.h>

using namespace std;

//Takes a single ascii number character and converts to BCD
int ascii_to_bcd(char c){
    return c - 48;
}

//Takes ascii string input and outputs BCD
void print_bcd(string input_ascii){
    int i = 0;
    //If these == 1, means symbol found
    bool dot = 0;
    bool sign = 0;
    for(char& c : input_ascii){
        if(c == '-'){
            cout << "NEGATIVE ";
            sign = 1;
        }
        else if(c == '.'){
            dot = 1;
            cout << "DOT ";
        }
        else{
            if(dot)i++;
            
            cout << (bitset<8>) ascii_to_bcd(c) << " ";
        }
    }
    cout << "Sign: " << sign <<  " Exponent: " << (bitset<8>) (127 - i) << endl;
}

//Conversion to float
float to_float(string input_ascii){
    int i = 0;
    int j = 0;
    int sign = 0;
    int dot = 0;
    int num = 0;
    //cout << "String length: " << input_ascii.length() << endl;
    int ascii_len = input_ascii.length() - 1;
    for(char& c : input_ascii){
        if(c == '-') sign = 0b10000000;
        else if(c == '.') dot = 1;
        else {
            num += ascii_to_bcd(c) * pow(10,ascii_len - i);
            i++;
            if(dot) j++;
        }
    }
    return num;
}

int main()
{
	string input_ascii;
    int i = 0;
    //Input value
    cout << "Input ascii" << endl;
    cin >> input_ascii;
    cout << "You input " << input_ascii << endl;

    //Outputs
    //cout << "Decimal value: " << to_float(input_ascii) << endl;
    print_bcd(input_ascii);
    cout << endl;
    //cout << (bitset<23>) to_float(input_ascii) << endl;
    cout << to_float(input_ascii) << endl;
    cout << endl;

	return 0;
}
