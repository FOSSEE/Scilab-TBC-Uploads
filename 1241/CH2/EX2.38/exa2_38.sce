//Example 2-38//
//add -17 to -30//
clc
//clears the console//
clear
//clears all exisiting variables//
x=bitcmp(17,8)
y=bitcmp(30,8)
//complement of the decimal numbers 17 and 30//
z=1
u=x+z
v=y+z
//1 is added to the complements//
w=u+v
a=dec2bin(w) 
//binary conversion of the decimal number//
disp('binary form of number obtained by adding -17 to -30')
disp(a)
//result is displayed//
disp(' the msb is discarded,so eight bit representation is the answer in binary form ')
a=dec2bin(w-(2^8))
disp(a)
//final result is displayed//
