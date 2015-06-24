//computation of equilibrium constant for a reaction

clear;
clc;

printf("\t Example 19.4\n");

n=2;
E0cathode=0.15;//standard electrode potential of cathode(Cu2+/Cu+), V
E0anode=-0.14;//standard electrode potential of anode(Sn2+/Sn), V

E0cell=E0cathode-E0anode;//standard emf of the cell, V

K=exp(n*E0cell/0.0257);//equilibrium constant, from the formula E0cell=0.0257*lnK/n

printf("\t the equilibrium constant for the given reaction is : %4.2f*10^9\n",K*10^-9);

//End
