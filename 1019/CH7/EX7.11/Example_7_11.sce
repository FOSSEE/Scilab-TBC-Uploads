//Example 7.11
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
T=293;//temperature in K
w2=2;//weight of the solute in g
w1=100;//weight of solvent(benzene) in g
M1=78;//molecular mass of solvent
p1=74.66;//vapour pressure of pure benzene in mm Hg
P1=74.01;//vapour pressure of benzene in the mixture in mm Hg

//To determine the molecular weight of the hydrocarbon
M2=(w2*M1*p1)/(w1*(p1-P1));//molecular weight of the hydrocarbon in g mol^-1
mprintf('The molecular weight of the hydrocarbon is = %f g mol^-1',M2);
//end