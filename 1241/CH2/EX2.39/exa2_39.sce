//Example 2-39//
//add -20 to 26//
clc
//clears the console//
clear
//clears all existing variables//
x=bitcmp(20,8)
//finds complement of 29//
y=1  
u=x+y
//1 is added to the complement//
v=26
w=u+v
a=dec2bin(w)
//binary conversion of the decimal number//
disp(' binary form of the number obtained by adding -20 to 26 ')
disp(a)
//result is displayed//
disp(' the msb is discarded,so eight bit representation is the answer in binary form ') 
a=dec2bin(w-(2^8))
disp(a)
//final result is displayed//
