//Example 2-41//
//one's complement form of -13//
clc
//clears the window//
clear
//clears all existing variables//
x=bitcmp(13,8)
//complement of 13//
a=dec2bin(x)
//binary conversion of the decimal number//
disp(' ones complement form of -13 ')
disp(a)
//result is displayed//
