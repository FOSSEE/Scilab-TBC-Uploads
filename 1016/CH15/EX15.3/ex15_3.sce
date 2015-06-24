clc;clear;
//Example 15.3

//given data
R=3*10^7;//rate of energy development in J s
E=200;//energy released per fission in MeV
e=1.6*10^-19;//the charge on electron in C
t=1000;//time is hours
Ekg=8.2*10^13;//energy released per kg of U-235

//calculation
CE=E*e*10^6;//conversion in J
n=R/CE;
disp(n,'no of atoms undergo fission/second ');
TE=R*t*3600;//energy produced in 1000 hours
MC=TE/Ekg;
disp(MC,'mass consumed in kg')