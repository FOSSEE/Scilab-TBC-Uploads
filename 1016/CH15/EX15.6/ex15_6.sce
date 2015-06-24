clc;clear;
//Example 15.6

//given data
AE=100;//electrical power in MW
E=200;//energy released per fission in MeV
e=1.6*10^-19;//the charge on electron in C
Na=6.02*10^26;//Avgraodo no. in 1/kg mole

//calculations
TE=AE*10^6*24*3600;//energy consumed in city in one day in J
EE=TE/0.2;
CE=E*e*10^6;//conversion in J
n=EE/CE;
m=235*n/Na;
disp(m,'amt of fuel required in kg')