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
    int sign = 0;
    int dot = 0;
    //If these == 1, means symbol found
    for(char& c : input_ascii){
        if(c == '-'){
            cout << "NEGATIVE ";
            sign = 1;
        }
        else if(c == '.'){
            cout << "DOT ";
            dot = 1;
        }
        else{
            if(dot)i++;
            cout << (bitset<8>) ascii_to_bcd(c) << " ";
        }
    }
    cout << "\nSign: " << sign <<  " Exponent: " << (bitset<8>) (127 - i) << endl;
}

//Get length of string (number of digits excluding sign and dec point)
int get_ascii_len(string input_ascii){
    int ascii_len = input_ascii.length() - 1;
        for(char& c : input_ascii){
            if(c == '-') ascii_len--;
            if(c == '.') ascii_len--;
        }
    return ascii_len;
}

//Conversion to float
int to_float(string input_ascii){
    //Count of digits (excluding sign and decimal point)
    int i = 0;
    //Count of digits after decimal point
    int j = 0;
    
    //If these == 1, means symbol found
    int sign = 0;
    int dot = 0;

    int num = 0;
    int exponent = 0;
     
    //Iterate over string, converting each char to BCD and factoring in sign and decimal place.
    for(char& c : input_ascii){
        if(c == '-') sign = 256;
        else if(c == '.') dot = 1;
        else {
            //num += ascii_to_bcd(c) * pow(10,get_ascii_len(input_ascii) - i);
            //TODO Binary logic multiplication
            num += ascii_to_bcd(c) << 3 + ascii_to_bcd(c) << 1;
            i++;
            if(dot) j++;
        }
    }

    //Calculates exponent
	exponent = ((sign + 127 - j) << 23);

    //Debug outputs
    cout << "Sign: " << (bitset<9>) sign << " Exponent: " << (bitset<32>) exponent << endl;
	cout << "Converted num: " << num << " Binary: " << 
		(bitset<32>) num << endl;
	cout << "Mantissa + Exponent: " << (bitset<32>) (num + exponent) << endl;
    //End of debug outputs

    //Calculates final FP32 value1
	num += exponent;
    return num;
}

//Multiply 2 mumbers without * operator
int multiply(int a, int b){
    //
}

//Conver an int to FP32 format
void intBitsToFloat(int bits){
    int s = ((bits >> 31) == 0) ? 1: -1;
    int e = ((bits >> 23) & 0xff);
    int m = (e == 0) ?
        ((bits & 0x7fffff) << 1 ):
        ((bits & 0x7fffff) | 0x80000);

    cout << "s: " << s << " e: " << e << " m: " << m << endl;
    cout << "FP32: " << (bitset<1>) s << (bitset<8>) e << (bitset<23>) m << endl;
    cout << "Your number: " << s * m * (2 << (127 - e)) << endl;

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
    print_bcd(input_ascii);
    cout << endl;
    cout << "FP32 output: " << (bitset<32>) to_float(input_ascii) << endl;
    cout << endl;
	//cin >> i;
    intBitsToFloat(1);

	return 0;
}
