//ques-6.15
//Determining solubility of AgCl at 298 K
clc
e1=2.415;//emf of SCE (in V)
e2=0.7991;//emf of Ag+/Ag (in V)
E=0.2621;//emf of cell (in V)
n=2;//number of electrons involved
//On solving, E=e2-e1+(0.0592/n)*log10(C^2);
C=10^-5;//concentration of Ag+
Ksp=C*C;
printf("The solubility of AgCl is 10^-10 mol^2/L^2.");
