//Ex10_11
//for two digit decimal value to convert into BCD
clc
x=72;
n=2// length of decimal input
f=10^(n-1)
z =int( x/f)            // taking MSB of input string
y=x-(z*10^(n-1))   // taking LSB of input string
disp("Decimal number="+string(x))
str1=dec2bin(z,4)// for 4 bit binary of MSB digit i.e 7 here
str2=dec2bin(y,4)//for 4 bit binary of LSB digit i.e 2 
disp(" Binary number of 7 ="+string(str1))
disp(" Binary number of 2 ="+string(str2))
disp("Eqivalent BCD of 72="+string(str1)+string(str2))// Binary coded decimal for  72

