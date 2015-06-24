//Example 2-23//
//Hexadecimal addition//
clc
//clears the console//
clear
//clears all existing variables//
x=hex2dec('ACEF1')
y=hex2dec('16B7D')
//Decimal conversion of the hexadecimal numbers//
z=x+y
//addition//
a=dec2hex(z)
//decimal to hexadecimal conversion//
disp(' addition of the 2 hexadecimal numbers is ')
disp(a)
//answer in hexadecimal form//
