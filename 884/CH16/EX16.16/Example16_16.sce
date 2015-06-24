//Computation of molar solubility in complex ion solution

clear;
clc;

printf("\t Example 16.16\n");

InitNH3=1;//initial conc of NH3, M
Ksp=1.6*10^-10;//solubility product of AgCl
Kf=1.5*10^7;//formation constant of complex
K=Ksp*Kf;//overall equilibrium constant

//let 's' be the molar solubility of AgCl, hence conc of [Ag(NH3)2+] and [Cl-] is 's' and hence conc of NH3 = InitNH3-2s
//K=[Ag(NH3)2+][Cl-]/[NH3]^2=s*s/(InitNH3-2s)^2, taking square root s/(InitNH3-2s)=sqrt(K)
s=sqrt(K)/(1+2*InitNH3*sqrt(K));//molar solubility of AgCl, M

printf("\t amount of AgCl which can be dissolved in 1 L of 1 M NH3 sol in equilibrium is : %2.3f M\n",s);
    
//End
