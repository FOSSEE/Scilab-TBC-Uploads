// Example 8_12
clc;funcprot(0);
// Given data
h=3.50;// W/(m^2.K)
A=1.00*10^-4;// m^2
P=0.0400;// m
T_infinitive=20.0+273.15;// K
k_t=204;// W/(m.K)
T_f=95.0+273.15;// K

// Solution
S_P_Q=sqrt(h*P*k_t*A)*((log(T_f/T_infinitive))+(T_infinitive/T_f)-1);// W/K
printf("\nThe entropy production rate for the fin,S_P=%0.5f W/K",S_P_Q);
