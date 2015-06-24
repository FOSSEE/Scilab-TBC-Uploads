//computation of concentration of component from cell potential

clear;
clc;

printf("\t Example 19.7\n");

n=2;

Zn=1;//conc of Zn2+ ions, M
pH2=1;//pressure of H2 gas, atm

Ecell=0.54;//emf of the cell, V

E0cell=0.76;//standard emf of the cell, V

Q=exp(-(Ecell-E0cell)*2/0.0257);//since Ecell=E0cell-0.0257/2*log(Q) where Q=(Zn2+)*pH2/(H+)^2

H=sqrt(Zn*pH2/Q);//the conc of H+ ions, M

printf("\t the molar concentration of H+ ion is : %2.0f*10^-4 M \n",H*10^4);

//End
