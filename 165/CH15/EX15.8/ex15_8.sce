//Example 15.8
clc;

C=0.047*10^-6;      //in farads
f=50;               //in ohms
x=2*%pi*f*C;
R=invr(x);
printf('\nValue of resistor R = %.2f k ohm\n',R/1000)