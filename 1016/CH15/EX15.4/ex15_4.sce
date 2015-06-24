clc;clear;
//Example 15.4

//given data
EPF=180;//Energy consumed per disintegration in MeV
E=1200;//average power in kW
t=10;//time in hours
Na=6.02*10^26;//Avgraodo no. in 1/kg mole
e=1.6*10^-19;//the charge on electron in C

//calculation
TE=E*t;//energy consumed in kWh
TE=TE*36*10^5;//conversion in J
EE=TE/0.2;//efficient energy
CE=EPF*e*10^6;//conversion in J
n=EE/CE;
m=235*n/Na*1000;
disp(m,'mass consumed in gram')