// Example 3_7
clc;funcprot(0);
// Given data
d=50*10^-3;// The distance in m
K=2500;// N/m
m=50;// kg
d_p=10/100;// m
P_atm=100;// The atmospheric pressure in kPa
g=9.81;// m/s^2

// Calculation
W=m*g;// The weight in N
A=(%pi*d_p^2)/4;
P_1=((P_atm*10^3*A)+W)/A;// The pressure in the cylinder in Pa
W_1=(P_1*A)*d;// J
x_1=0;// m
x_2=d;// m
W_2=(1/2)*K*((x_2^2)-(x_1^2));// The work required to compress in J
W_total=W_1+W_2;// The total work in J
printf("\nThe total work,W_total=%2.2f J",W_total);
