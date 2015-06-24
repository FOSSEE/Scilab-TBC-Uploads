clc;clear;
//Example 21.3
//calculation of relative permeability

//given values

X=3.7*10^-3;//susceptibility at 300k
T=300;//temp in K
T1=200;//temp in K
T2=500;//temp in K

//calculation
C=X*T;//curie constant
XT1=C/T1;
disp(XT1,'relative permeability at T1 is ');
XT2=C/T2;
disp(XT2,'relative permeability at T2 is')
