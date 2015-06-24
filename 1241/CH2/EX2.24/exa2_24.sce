//Example 2-24//
//Hexadecimal Subtraction//
clc
//clears the console//
clear
//clears all existing variables//
x=hex2dec('1273')
y=hex2dec('3A8')
//Decimal conversion of the hexadecimal numbers//
z=x-y
//addition//
a=dec2hex(z)
//decimal to hexadecimal conversion//
disp(' addition of the 2 hexadecimal numbers is ')
disp(a)
//answer in hexadecimal form//
