//Example 5.7
clear;
clc;

//Given
P1=2.15;//vapour pressure of water in mm of Hg
P2=1.95;//vapour pressure of ice in mm of Hg
R=8.314;//gas constant in J K^-1 mol^-1
T=263//temperature in K

//To determine the free energy change delG
delG=R*T*log(P2/P1);//gibbs free energy in J mol^-1
mprintf('(i) Free energy change = 0 J mol^-1');
mprintf('\n (ii) Free energy change = %f J mol^-1',delG);
mprintf('\n (iii) Total Free energy change = %f J mol^-1',delG);
//end