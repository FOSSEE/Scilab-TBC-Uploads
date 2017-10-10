// Ex 29 Page 372

clc;clear;close;
// Given
fT=6*10**6;//Hz
hfe=50;
Rs=500;//ohm
gm=0.04;//S
rbb_dash=100;//ohm
Cc=10*10**-12;//F
RL=1;//kohm

rbe=hfe/gm;//ohm
Ce=gm/2/%pi/fT;//F
C=Ce+Cc*(1+gm*RL);//F
hie=rbb_dash+rbe;//ohm
R=(Rs+rbb_dash)*rbe/((Rs+rbb_dash)+rbe);//ohm
f2=1/2/%pi/R/C;//Hz
printf("Voltage gain upper BW frequency = %.2f MHz",f2/10**6)
AIS=-hfe*Rs/(Rs+hie);//current gain
printf("\n Current gain = %.2f",AIS)
AVS=-hfe*RL*1000/(Rs+hie);//voltage gain
printf("\n Voltage gain = %.2f",AVS)
AVSf2=AVS*f2;//Hz
printf("\n Voltage gain BW product = %.2f MHz",abs(AVSf2/10**6))
AISf2=AIS*f2;//Hz
printf("\n Current gain BW product = %.2f MHz",abs(AISf2/10**6))

//answer in the textbook are wrong.
