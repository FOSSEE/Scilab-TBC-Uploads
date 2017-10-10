//Example number 6.5, Page number 6.47

clc;clear;close


// Variable declaration
mew0=4*%pi*10**-7; // coefficient
H=9.27*10**-24;      // bohr magneton(ampere m**2)
Beta=10**6;      // field(ampere/m)
k=1.38*10**-23;    // boltzmann constant
T=303;    // temperature(K)

// Calculation
mm=mew0*H*Beta/(k*T);    // average magnetic moment(bohr magneton/spin)

// Result
printf("average magnetic moment is: %.2e bohr magneton/spin",(mm)) 
