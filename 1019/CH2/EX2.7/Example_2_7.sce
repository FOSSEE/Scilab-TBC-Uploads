//Example 2.7
clear;
clc;

//Given
n=2;//moles of ideal gas
R=8.314;// gas constant in J K^-1 mol^-1
T=273;// temperature in K
p1=10;// initial pressure in atm
p2=0.4;// final pressure in atm

// To determine q,w,delH and DelE
w=(-1)*n*R*T*(1-(p2/p1));// w in joule
q=(-1)*w;
mprintf('q = %f J',q);
mprintf('\n w = %f J',w);
mprintf('\n delE = 0 J,since it is an isothermal process');
mprintf('\n delH = 0 J,since it is an isothermal process');
//end