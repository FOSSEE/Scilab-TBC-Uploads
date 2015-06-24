//Ex9_7

clc;

// Given:

k1=3.78;
k2=2.79;
t1=298;// in K
t2=353;// in K
R=8.314// Gas constant

// Formula: log(k1/k2)=(H/R)*((t2-t1)t1*t2)

// Solution:

H=R*log(k1/k2)/((t2-t1)/(t1*t2));

printf("The enthalpy for the exchange reaction is = %f J",H)







