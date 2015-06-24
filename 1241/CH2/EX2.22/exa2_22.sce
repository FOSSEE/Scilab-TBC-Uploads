//Example 2-22//
//Hexadecimal addition//
clc
//clears the console//
clear
//clears all existing variables//
x=hex2dec('1A8')
y=hex2dec('67B')
//Decimal conversion of the hexadecimal numbers//
z=x+y
//addition//
a=dec2hex(z)
//decimal to hexadecimal conversion//
disp(' addition of the 2 hexadecimal numbers is ')
disp(a)
//answer in hexadecimal form//
