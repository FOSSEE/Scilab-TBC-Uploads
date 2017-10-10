//Example 1.16: Addition of two signed numbers +5 and +4
clc;
x=5;
y=4;
z=x+y;
r = dec2bin(z); // binary equivalent of decimal number
disp('The binary number is = ');
disp(r) 
disp('The answer produced is clearly wrong because the correct answer (+9) is out of range. Overflow occurs when the sum is out of range. For 4-bit signed numbers,that range is -8 <= sum <= 7.')
