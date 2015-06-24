//example 2
//Dissociation Temperature of Hydrogen
clear
clc
P=10 //given pressure in atm
Nh=0.2 //No.of kmol of atomic hydrogen produced in the reaction
Nh2=0.9 //No. of kmol of molecular hydrogen left as reactant
Ntotal=Nh+Nh2 //Total no. of kmol of reactant and products
vh=2 //From the stoichometry of the reaction
vh2=1 //From the stoichometry of the reaction
Kp=(Nh^vh/Nh2^vh2)*(P/Ntotal)^(vh-vh2) //Equilbrium constant
T=3535 //Temp. corresponding to evaluated value of Kp
printf("\n Hence,temperature at which 10 percent of diatomic hydrogen (H2) dissociates into monatomic hydrogen (H) is = %.0f K. \n",T);