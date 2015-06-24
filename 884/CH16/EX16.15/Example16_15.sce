//Computation of concentration at complex ion equilibrium

clear;
clc;

printf("\t Example 16.15\n");

CuSO4=0.2;//normality of CuSO4, M
NH3=1.2;//initial conc of NH3, M
VNH3=1;//volume of NH3, L
Kf=5*10^13;//formation constant
CuNH34=CuSO4;//conc of Cu(NH3)4 2+, M
NH3=NH3-4*CuNH34;//conc of NH3 after formation of complex, as 4 moles of NH3 react to form 1 mole complex, M

//let 'x' be the conc of Cu2+ ions
x=CuNH34/(NH3^4*Kf);//as Kf=[Cu(SO4)3 2+]/[Cu2+][NH3]^4

printf("\t the conc of Cu2+ ions in equilibrium is : %2.1f *10^-13 M\n",x*10^13);
    
//End
