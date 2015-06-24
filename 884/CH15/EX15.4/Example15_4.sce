// Computation of [H+] ion concentration from pH

clear;
clc;

printf("\t Example 15.4\n");

pH=4.82;//Given
H=10^(-pH);//Concentration of [H+] ion, M, formula from the definition of pH

printf("\t The [H+] ion concentration of the solution is : %3.1f*10^-5 M\n",H*10^5);


//End
