//Monitoring the Titration

//Example 11.2

clc;

clear;

Kin=4*10^-10;//Equilibrium Constant

pKin=-log10(Kin);//Negative Logarithm of Kin

phl=pKin-1;//Lower Value of pH

phu=pKin+1;//Upper Value of pH

printf("Phenophthalein can be used as an indicator as it begins to change color from acid(colourless) at pH %f",phl);

printf("\nto base form (reddish pink)at pH %f",phu)
