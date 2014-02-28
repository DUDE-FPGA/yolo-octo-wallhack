#include <iostream>
#include <bitset>
#include <climits>

using namespace std;

//Takes a single ascii number character and converts to BCD
int ascii_to_bcd(char c){
    switch(c){
        case 0b110001: return 0b0001;
        case 0b110010: return 0b0010;
        case 0b110011: return 0b0011;
        case 0b110100: return 0b0100;
        case 0b110101: return 0b0101;
        case 0b110110: return 0b0110;
        case 0b110111: return 0b0111;
        case 0b111000: return 0b1000;
        case 0b111001: return 0b1001;
    }
}

int main()
{
	string input_ascii;
    int i = 0;
    cout << "Input ascii" << endl;
    cin >> input_ascii;
    cout << "You input " << input_ascii << endl;

    for(char& c : input_ascii){
        cout << (bitset<8>) ascii_to_bcd(c) << " ";
    }
    
    cout << endl;

	return 0;
}
