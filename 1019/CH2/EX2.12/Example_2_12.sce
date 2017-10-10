//Example 2.12
clear;
clc;

//Given
R=0.082;// gas constant in atm dm^3 K^-1 mol^-1
v1=1;// initial volume in dm^3 mol^-1
v2=50;// fina volume in dm^3 mol^-1
T=273;// temperature in K
a=6.5;// van der waals constant inatm dm^6 mol^-2
b=0.056;//atm dm^3 K^-1 mol^-1
n=1; //moles of given gas

// To determine t2,w,delH and delE
w=(-1)*101.325*R*T*log(v2/v1);//work done in J mol^-1
W=101.325*(-1)*((R*T*log((v2-(n*b))/(v1-(n*b))))+(a*n*n*((1/v2)-(1/v1))));//work done in J in terms of van der waals gas
delE=(-1)*101.325*a*((1/v2)-(1/v1));//change in internal energy in J mol^-1
q=delE-W;
mprintf('(i) For ideal gas, W = %f J mol^-1, delE = 0,q = 0',w);
mprintf('\n (ii) For Van der Waals gas, W = %f J mol^-1,delE = %f J mol^-1,q = %f J mol^-1',W,delE,q);
//end