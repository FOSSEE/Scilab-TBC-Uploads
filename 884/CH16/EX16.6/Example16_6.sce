// Computation of pH in a titration of weak base and strong acid at equivalence point

clear;
clc;

printf("\t Example 16.6\n");

InitNH3=0.1;//Initial concentration of NH3 solution, M
VNH3=25;//volume of NH3, mL
nNH3=InitNH3*VNH3/1000;
Ka=5.6*10^-10;//equilibrium constant of acid, M

N=0.1;//Initial concentration, M
V=VNH3/InitNH3*N;//Initial volume, mL

V_total=V+VNH3;//total volume of the mixture, mL

n_NH4Cl=nNH3;//moles of NH4Cl
NH4Cl=n_NH4Cl/V_total*1000;//conc of NH4+ ions formed, M

//Let 'x' be the equilibrium concentration of the [H+] and [NH3] ions, M
x=sqrt(Ka*NH4Cl);//from the definition of ionisation constant Ka=[H+]*[NH3]/[NH4+]=x*x/(NH4+-x), which reduces to x*x/NH4+, as x<<NH4+ (approximation)

pH=-log10(x);//since x is the conc. of [H+] ions

printf("\t the pH of the solution at equivalent point is : %4.2f \n",pH);

//End
