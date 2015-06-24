//Exa 5.5
clc;
clear;
close;
//given data
ND=2*10^16;//in cm^-3
NA=5*10^15;//in cm^-3
Ao=4.83*10^21;//constant
T=300;//in Kelvin
EG=1.1;//in eV
kT=0.026;//in eV
ni=Ao*T^(3/2)*exp(-EG/(2*kT));//in m^-3
ni=ni*10^-6;//in cm^-3
p=(ni^2)/ND;//in cm^-3
n=(ni^2)/NA;//in cm^-3
disp(p,"Hole concentration in cm^-3 : ");
disp(n,"electron concentration in cm^-3 : ");
disp("Since elctron concentration is mote than hole concentration, the given Si is of N-type.");
//Note : Ans in the book is wrong. Mistake in value putting. 