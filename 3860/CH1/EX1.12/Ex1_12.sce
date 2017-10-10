//Example 1.12 Addition of two Binary numbers
clc // clears the console window
clear // clears the variable browser
m = bin2dec('0110'); //conversion from binary to decimal
n = bin2dec('0111'); 
k= m + n; //addition of decimal numbers
a = dec2bin(k);//conversion from decimal to Binary
// displays the binary addition.
disp(a,'Addition of two Binary number 0110 and 0111 is = ')
p = bin2dec('1101'); //conversion from binary to decimal
q = bin2dec('0101'); 
r= p + q; //addition of decimal numbers
s = dec2bin(r);//conversion from decimal to Binary
// displays the binary addition.
disp(s,'Addition of two Binary number 1101 and 0101 is = ')
