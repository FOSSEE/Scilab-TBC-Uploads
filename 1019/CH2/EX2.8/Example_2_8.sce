//Example 2.8
clear;
clc;

//Given
n=5;//moles of ideal gas
R=8.314;// gas constant in J K^-1 mol^-1
T=300;// temperature in K
p1=10;// initial pressure in atm
p2=4;// final pressure in atm
P=1;// external pressure in atm

// To determine q,w,delH and DelE
w=(-1)*n*R*T*((P/p2)-(P/p1));// w in joule
q=(-1)*w;//q in J
mprintf('q = %f J',q);
mprintf('\n w = %f J',w);
mprintf('\n delE = 0 J,since it is an isothermal process');
mprintf('\n delH = 0 J,since it is an isothermal process');
//end