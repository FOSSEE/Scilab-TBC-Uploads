clc;clear;
//Example 17.2
//calculation of velocity of e

//given values
e=1.6*10^-19;//charge of e in C
E=2.1*e;//fermi level in J
m=9.1*10^-31;//mass of e in kg

//calculation
v=sqrt(2*E/m);

disp(v,'velocity of e(in m/s)');
