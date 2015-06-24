//Example 2-12//
//Binary multiplication//
clc
//clears the console//
clear
//clears all existing variables//
x=bin2dec('11010')
y=bin2dec('11011')
//binary to decimal conversion//
z=x*y;
//multiplication//
a=dec2bin(z)
//decimal to binary conversion//
disp(' multiplication of two binary numbers is: ')
disp(a)
//answer in binary form//
