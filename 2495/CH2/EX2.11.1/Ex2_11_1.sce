clear 
clc
w2=0.122;//amount of benzoic acid in kg
w1=1;//amount of benzene in kg
Tb1=353;//boiling point of benzene in K
Tb2=354.5;//boiling point at which actually boiling of benzene starts in K
DelH_v=394.57;//in J/gm
M1=w2/0.122;//amount of benzoic acid in mol
R=8.314;//in J/Kmol
M2=((M1*78*10^-3)*R*Tb1^2*w2)/(w1*(Tb2-Tb1)*(DelH_v*78));//apparant molar mass of benzoic acid in kg/mol
printf('M2=%.4f kg/mol',M2)
alpha=2*(1-(w2/M2));//degree of dimerisation in mol
printf('\nalpha=%.4f mol',alpha)

//There are some errors in the solution given in textbook
//page 75
