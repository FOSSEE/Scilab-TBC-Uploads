//Example 2-40//
//add -29 to 14//
clc
//clears the console//
clear
//clears all existing variables//
x=bitcmp(29,8)
//finds complement of 29//
y=1  
u=x+y
//1 is added to the complement//
v=14
w=u+v
a=dec2bin(w)
//binary conversion of the decimal number//
disp(' binary form of the number obtained by adding -29 to 14 ')
disp(a)
//result is displayed//
