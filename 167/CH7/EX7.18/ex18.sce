//ques18
//Entropy Generation during a Throttling Process
clear
clc
//state 1
P1=7;//MPa
T1=450;//C
//from table
h1=3288.3;//kJ/kg
s1=6.6353;//kJ/kg.K

//state 2
P2=3;//MPa
h2=3288.3;//h2=h1
s2=7.0046;//kJ/kg.K
sgen=(s2-s1);
printf('Entropy of generation per unit mass = %.4f kJ/kg.K',sgen);