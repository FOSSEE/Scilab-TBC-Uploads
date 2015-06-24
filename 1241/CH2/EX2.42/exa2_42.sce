//Example 2-42//
//ones complement of -13 by 2nd method//
clc
//clears the window//
clear
//clears all existing variables//
a=bitcmp(0,8)
//decimal equivalent of 11111111//
b=13
c=a-b
//subtracting 13 from decimal equivalent of 11111111//
z=dec2bin(c)
disp('ones complement of -13 is:')
disp(z)
//result is displayed//
