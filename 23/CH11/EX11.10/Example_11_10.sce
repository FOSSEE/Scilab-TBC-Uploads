clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 11.10
//Caption : Program to Find the Excess Properties for a mixture 

T0=298.15;//[K]
T=323.15;//[K]
Cp_E=-2.86;//[J/mol/K]
Ho_E=897.9;//[J/mol]
Go_E=384.5;//[J/mol]

//(a)  Derivations

//G_E=-a*(T ln T - T)+ bT + c
//S_E=a ln T - b
//H_E=aT + c

//Where

//a=Cp_E
//c=Ho_E-aT0
//b=((Go_E+a(T ln T0 - T0)-c)/T0)

//(b)
a=Cp_E;
c=approx(Ho_E-(a*T0),1);
b=approx((Go_E+(a*((T0*log(T0))-T0)-c))/T0,4);
G_E=approx((-a*(T*log(T)-T))+(b*T)+c,1);
S_E=approx((a*log(T))-b,3);
H_E=approx((a*T)+c,1);

disp('J/mol',G_E,'G_E = ')
disp('J/mol/K',S_E,'S_E = ')
disp('J/mol',H_E,'H_E = ')

//End