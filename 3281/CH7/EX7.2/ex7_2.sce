//Page Number: 370
//Example 7.2
clc;
//Given
V0=25D+3; //V
ebym=1.76D+11;
B0=0.0336; //T
a=5D-2; //m
b=10D-2; //m

//(i) Cut off voltage
x=(b/((b*b)-(a*a)))^2;
V=(ebym*B0*B0)/(8*x);
disp('KV',V/1000,'Cut off voltage:');

//(ii) Cut off magnetic field
y=((8*V0*x)/ebym);
B=sqrt(y);
disp('mT',B*1000,'Cut off magnetic field:');

