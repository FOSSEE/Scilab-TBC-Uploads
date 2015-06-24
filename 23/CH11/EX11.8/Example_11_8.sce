clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 11.8
//Caption : Program to Find the Fugacity of 1-butene vapor

T=473.15;//[K]
P=70;//[bar]
Tc=420;//[K]
Pc=40.43;//[bar]
omega=0.191;

//By interpolation in Tables E.15 and E.16
si_0=0.627;
si_1=1.096;
//Using Eqn(11.64)
si=approx(si_0*(si_1^omega),3);
f=approx(si*P,1);
disp(si,'Fugacity coefficient is ')
disp('bar',f,'fugacity is ')

//End