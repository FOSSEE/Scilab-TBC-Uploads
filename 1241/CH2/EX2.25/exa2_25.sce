//Example 6-25//
//Solve multiple output equation using mapping//
clc
//clears the window//
clear
//clears all existing variables//
x=hex2dec('1A3')
y=hex2dec('89')
//Decimal conversion of the hexadecimal numbers//
z=x*y
//multiplication//
a=dec2hex(z)
//decimal to hexadecimal conversion//
disp(' multiplication of the 2 hexadecimal numbers is ')
disp(a)
//answer in hexadecimal form//
