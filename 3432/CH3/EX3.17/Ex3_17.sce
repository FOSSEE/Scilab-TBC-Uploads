//Example 3.17 Transformations

clear;
clc;
//-------------------------------------------------------------------
//Coefficients of numerator and denominator of the transfer function
numG=[9 3];
denG=[25 6 1];

// Transfer function
Ns=poly(numG,'s','coeff');
Ds=poly(denG,'s','coeff');
sysG=syslin('c',Ns/Ds);

//gain (K) pole (P) and zeros (Z) of the system
temp=polfact(Ns);
Z=roots(Ns); //locations of zeros
P=roots(Ds); //locations of poles
K=temp(1); //first entry is always gain
disp( K,"Gain", P, "Poles",Z,"Zeros",)
//------------------------------------------------------------------
