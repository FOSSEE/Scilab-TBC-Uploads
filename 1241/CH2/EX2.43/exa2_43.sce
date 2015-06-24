//Example 2-43//
//add -3 to -2 in one's complement using 4 bits//
clc
//clears the window//
clear
//clears all the existing variables//
x=bitcmp(3,4)
y=bitcmp(2,4)
//complement of the decimal number 2//
z=x+y+1
//carry is added//
a=dec2bin(z)
//binary conversion//
disp('binary form of the number obtained by adding -3 to -2')
disp(a)
//result is displayed//
disp('msb is discarded,4 bit representation is the answer in binary form') 
a=dec2bin(z-(2^4))
disp(a)
//Final result is displayed//
