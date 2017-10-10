//Example 1.21: Overflow for unsigned numbers in Example 1.21(a) and for signed numbers in Example 1.21(b)
clc;
disp('Example 1.21(a)')
x=bitcmp(7,4) //finds complement of 5
y=1;
u=x+y //1 is added to the complement
w=5
z=w+u;
r = dec2bin(z); // binary equivalent of decimal number
disp('The binary number is = ');
disp(r) 
disp('Example 1.21(b)')
x=7
y=5;
u=x+y //1 is added to the complement
r = dec2bin(u); // binary equivalent of decimal number
disp('The binary number is = ');
disp(r) 
