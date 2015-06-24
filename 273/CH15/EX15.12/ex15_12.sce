clc;clear;
//Example 15.12
//calculation of amount of fuel

//given values
P=100*10^6;//power required by city
M=235;//atomic mass of Uranium in g
e=20/100;//conversion efficiency
NA=6.02*10^26;//avogadros number
E=200*10^6*1.6*10^-19;//energy released per fission
t=8.64*10^4;//day in seconds


//calculation
E1=P*t;//energy requirement
m=E1*M/(NA*e*E);//no of nuclei N=NA*m/M,energy released by m kg is N*E,energy requirement=e*N*E
disp(m,'amount of fuel(in kg) required is');