//ques-18.43
//Calculating equilibrium constant for dissociation of acetic acid
clc
T=298;//temperature (in K)
R=8.314;//(in J/mol/K)
//G = free energy change for formation (in kJ/mol)
G1=-396.6;//acetic acid
G2=-369.4;//acetate ion
G3=0;//proton
G=G2+G3-G1;//dissociation reaction
c=-(G*1000)/(2.303*R*T);
//On solving, log10(K) = c;
K=1.72*10^-5;
printf("The equilibrium constant for the reaction is %.7f.",K);
