//Example 2-44//
//add -3 to 2 in one's complement using 4 bits//
clc
//clears the window//
clear
//clears all the existing variables//
x=2
y=bitcmp(3,4)
//complement of the decimal number 2//
z=x+y
a=dec2bin(z)
//binary conversion//
disp('binary form of the number obtained by adding -3 to 2')
disp(a)
//result is displayed//
