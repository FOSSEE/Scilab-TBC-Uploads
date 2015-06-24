//Example 2-45//
//add 3 to -2 in one's complement using 8 bits//
clc
//clears the window//
clear
//clears all the existing variables//
x=3
y=bitcmp(2,8)
//complement of the decimal number 2//
z=x+y+1
//carry is added//
a=dec2bin(z)
//binary conversion//
disp('binary form of the number obtained by adding 3 to -2')
disp(a)
//result is displayed//
disp('msb is discarded,8 bit representation is the answer in binary form') 
a=dec2bin(z-(2^8))
disp(a)
//Final result is displayed//
