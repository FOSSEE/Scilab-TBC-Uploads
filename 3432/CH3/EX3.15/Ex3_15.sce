//Example 3.15 Cruise Control Transfer Function.
//Coefficients of numerator and denominator of the transfer function

clear;
clc;
//------------------------------------------------------------------
// Transfer function coefficients
num=[0.001 0];
den=[0 0.05 1];

// Transfer function
Ns=poly(num,'s','coeff');
Ds=poly(den,'s','coeff');
sys=syslin('c',Ns/Ds);

//gain (K) pole (P) and zeros (Z) of the system
temp=polfact(Ns);
Z=roots(Ns); //locations of zeros
P=roots(Ds); //locations of poles
K=temp(1); //first entry is always gain
disp( K,"Gain", P, "Poles",Z,"Zeros",)

//------------------------------------------------------------------
