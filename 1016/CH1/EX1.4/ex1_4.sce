clc;clear;
//Example 1.4
//calculation of mass of oil drop

//given values
d=0.02//distance between plates in m
q=1.6*10^-19;//charge on oil drop in C
V=6000;//potential differnce of plates in V
g=9.81;//acceleration due to gravity in m/(s^2)

//calculation
E=V/d;//electric field intensity between plates in V/m
F=q*E;//electrostatic force on oil drop in N
m=F/g;//equating the weight of oil drop to the electrostatic force on it
disp(m,'The mass(in kg) of oil drop')  