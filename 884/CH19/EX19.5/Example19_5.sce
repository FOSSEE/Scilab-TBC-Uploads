//computation of standard free energy change for a reaction

clear;
clc;

printf("\t Example 19.5\n");

n=6;
F=96500;//faraday constant, J/V mol

E0cathode=-2.87;//standard electrode potential of cathode(Ca2+/Ca), V
E0anode=1.5;//standard electrode potential of anode(Au3+/Au), V

E0cell=E0cathode-E0anode;//standard emf of the cell, V

deltaG0=-n*F*E0cell;//standard free energy change for the reaction, kJ/mol

printf("\t the standard free energy change for the reaction is : %4.2f*10^3 kJ/mol \n",deltaG0*10^-6);

//End
