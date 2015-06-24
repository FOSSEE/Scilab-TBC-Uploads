clc;clear;
//Example 15.5

//given data
OE=200;//o/p power in MW
E=200;//energy released per fission in MeV
WF=3.1*10^10;//fission rate in fissions/second
Na=6.02*10^26;//Avgraodo no. in 1/kg mole

//calculations
IE=OE/0.3*10^6;//reactor input in W
TFR=WF*IE;
n=TFR*24*3600;//no. of U-235 for one day
m=235*n/Na;
disp((m*100/0.7),'amt of natural uranium conumed/day in kg')