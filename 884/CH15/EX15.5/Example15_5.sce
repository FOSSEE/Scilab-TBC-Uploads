// Computation of pH of a solution from [OH-] ion concentration

clear;
clc;

printf("\t Example 15.5\n");

OH=2.9*10^-4;//Concentration of [OH-] ion, M

pOH=-log10(OH);//by definition of p(OH)

pH=14-pOH;

printf("\t the pH of the solution is : %4.2f \n",pH);

//End
