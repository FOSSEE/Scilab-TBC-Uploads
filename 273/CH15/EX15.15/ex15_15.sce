clc;clear;
//Example 15.15
//calculation of amount of dueterium consumed

//given values
M1=2.01478;//atomic mass of Hydrogen in amu
M2=4.00388;//atomic mass of Helium in amu
amu=931;//amu in MeV
e=30/100;//efficiency
P=50*10^6;//output power
NA=6.026*10^26;//avogadro number
t=8.64*10^4;//seconds in a day

//calculation
Q=(2*M1-M2)*amu;//energy released in a D-D reaction in MeV
O=Q*e*10^6/2;//actual output per dueterium atom in eV
n=P/(O*1.6*10^-19);//no of D atoms required
m=n*M1/NA;//equivalent mass of D required per s
X=m*t;

disp(X,'Deuterium requirement per day in kg is');
