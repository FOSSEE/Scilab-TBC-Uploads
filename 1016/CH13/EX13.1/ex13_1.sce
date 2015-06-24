clc;clear;
//Example 13.1

//given data
m1=7.0183;//mass of 3Li7 in a.m.u
m2=4.0040;//mass of 2He4 in a.m.u
m3=1.0082;//mass of 1H1 in a.m.u
Na=6.02*10^26;//Avgraodo no. in 1/kg mole
//rxn = 3Li7 + 1H1 = 2He4 + 2He4 

//calculations
dm=m1+m3-(2*m2);
E=dm*931;
n=0.1*Na/7;//no of atoms in 100 gm of lithium
TE=n*E;
disp(TE,'Total energy available in MeV')