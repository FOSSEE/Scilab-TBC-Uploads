//Example 2-11//
//Binary multiplication//
clc
//clears the console//
clear
//clears all existing variables//
x=bin2dec('1011')
y=bin2dec('101')
//binary to decimal conversion//
z=x*y;
//multiplication//
a=dec2bin(z)
//decimal to binary conversion//
disp(' multiplication of two binary numbers is: ')
disp(a)
//answer in binary form//
