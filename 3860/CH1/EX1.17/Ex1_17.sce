//Example 1.17: Addition of two signed numbers -5 and -4
clc;
x=bitcmp(5,4) //finds complement of 5
y=1;
u=x+y //1 is added to the complement
l=bitcmp(4,4) //finds complement of 5
m=1;
n=l+m //1 is added to the complement
z=n+u;
r = dec2bin(z); // binary equivalent of decimal number
disp('The binary number is = ');
disp(r) 
disp('The msb is discarded, and binary number becomes')
disp('0111')
disp('This time, two negetive numbers produced a sum that looks positive.')
