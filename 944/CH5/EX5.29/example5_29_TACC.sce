//example 5.29

clear;
clc;

//Given:
T2=353.2;//normal boiling point of benzene at 1.01325bar[K]
T1=298;//temperature [K]
R=8.314;//Universal gas constant[J/K/mol]
P2=1.01325;//Vapour pressure of benzene[bar]
//benzene obey's Trouton's rule
disp(" from Troutons rule , ");
disp(" He/Tb=85J/K/mol");

//To find the vapour pressure of benzene at 298K
He=85*T2;//molar enthalpy of vapourization[J/K/mol]
x=(T2^-1)-(T1^-1);
t=-He*x/R;
P1=P2/exp(t);
printf("\nThe vapour pressure of benzene at 298K is %f bar",P1);
