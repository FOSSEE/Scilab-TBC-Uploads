//amount of reactants and products

clear;
clc;

printf("\t Example 3.14\n");

H2=2.016;//mol. mass of H2, g
Li=6.941;//mol. mass of Li, g
mH2=9.89;//mass of H2, g
nH2=mH2/H2;//moles of H2
nLi=2*nH2;//moles of Li, 1mol H2 given by 2mol Li
mLi=Li*nLi;////mass of Li, g

printf("\t the mass of Li is : %1.1f g\n",mLi);

//End
