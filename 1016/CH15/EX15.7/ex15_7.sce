clc;clear;
//Example 15.7

//given data
OE=3000;//output power in MWh
E=200;//energy released per fission in MeV
e=1.6*10^-19;//the charge on electron in C
Na=6.02*10^26;//Avgraodo no. in 1/kg mole

//calculations
IE=OE/0.2;
TE=IE*36*10^8;//conversion in J
CE=E*e*10^6;//conversion in J
n=TE/CE;
m=235*n/Na;
disp(m,'daily fuel requirement in kg')