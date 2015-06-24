//example 1
//Equilibrium Constant of a Dissociation Process
clear
clc
T=298.15 //Temp. in K
vn=2 //No. of moles of N in products 
vn2=1 //No. of moles of N2 in reactants
gN2=0 //Molar gibbs function for N2
gN=455510 //Molar gibbs function for N in kJ/kmol
dG=vn*gN-vn2*gN2 //Change in Gibbs function of the mixture 
Ru=8.314 //Universal Gas Constant in kJ/kmol-K
Kp=%e^(-dG/Ru*T) //Equilbrium Constant 
printf("\n Hence, Equilbrium Constant is = %.0f . \n",Kp);