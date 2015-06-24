//Find Dipole moment and  Percentage ionic character
//Ex:3.5
clc;
clear;
close;
d=0.9178;//molecular distance in angstorm
d1=d*10^-10;//in m
e=1.602*10^-19;//in C
dm=e*d1;//dipole moment in fully ionic state in Cm
disp(dm,"Dipole moment of HF in fully ionic state (in Cm) = ");
dm_m=6.375*10^-30;//meaured dipole moment in Cm
p=(dm_m*100)/dm;//Percentage ionic character
disp(p,"Percentage ionic character");
