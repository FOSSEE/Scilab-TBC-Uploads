clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

function[Q]=ICPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))*(T-T0)
  funcprot(0);
endfunction
    

//Example 4.2
//Caption : Program to find Heat Required to Heat Methane gas

//Given values for methane
R=8.314;
T0=533.15;
T=873.15;
A=1.702;
B=9.081*(10^-3);
C=-2.164*(10^-6);
D=0;


//Solution
Q=approx(R*ICPH(T0,T,A,B,C,D),0);
disp('J',Q,'Heat Required')

//End