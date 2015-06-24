//computation of component pressure from equilibrium constant

clear;
clc;

printf("\t Example 14.3\n");

PCl3=0.463;//equilibrium pressure of PCl3, atm
PCl5=0.875;//equilibrium pressure of PCl5, atm
Kp=1.05;//equilibrium constant of the reaction

Cl2=Kp*PCl5/PCl3;//equilibrium pressure of Cl2 in atm, formula from the definition of equilibrium constant

printf("\t the value of the equilibrium pressure of the Cl2 gas is : %4.2f atm\n",Cl2);

//End
