clc;clear;
//Example 7.2

//given data
p=1.7*10^-6;//resistivity in ohm-cm
d=8.96;//density in gm/cc
W=63.5;
Na=6.02*10^23;//Avgraodo no. in 1/g mole
e=1.6*10^-19;//the charge on electron in C

//calcualtions
n=8.96*Na/W;
ue=1/(p*e*n);
disp(ue,'mobilty of electrons in cm^2/V-s');
