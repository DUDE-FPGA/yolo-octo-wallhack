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
    for(char& c : input_ascii){
        if(c == '-'){
            cout << "NEGATIVE ";
        }
        else if(c == '.'){
            cout << "DOT ";
        }
        else{
            cout << (bitset<8>) ascii_to_bcd(c) << " ";
        }
    }
}

float to_float(string input_ascii){
    int i = 0;
    int num = 0;
    int decimal = 0;
    //cout << "String length: " << input_ascii.length() << endl;
    int ascii_len = input_ascii.length() - 1;
    for(char& c : input_ascii){
        //cout << ascii_to_bcd(c) << " ";
        num += ascii_to_bcd(c) * pow(10,ascii_len - i);
        i++;
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
    cout << "Decimal value: " << to_float(input_ascii) << endl;
    print_bcd(input_ascii);
    cout << endl;
    cout << (bitset<24>) to_float(input_ascii) << endl;
    //cout << print_bcd(input_ascii);
    cout << endl;

	return 0;
}
