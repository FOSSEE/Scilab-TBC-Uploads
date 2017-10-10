// Ex 26 Page 368

clc;clear;close;
// Given
Ic=3;//mA
hfe=45;//unitless
Vcc=12;//V
VBE=0.5;//V
S=0.05;//stability factor
Beta=45;//unitless

RR=Vcc/2/(Ic*10**-3);//ohm (let RL+Re=RR)
//Re=20% of (Re+Rl)
Re=RR*20/100;//ohm
RL=RR-Re;//ohm
Ve=(Ic+Ic/Beta)*10**-3*Re;//V
Vb=Ve+VBE;//V
//S=Re/Rb=0.5 => Rb=Re/S
R1=Vcc*Re/S/Vb/1000;//kohm
// Vb/Vcc = R2/(R2+R1)
R2=Vb*R1/(Vcc-Vb);//kohm
printf("Resistor values are : ")
printf("\n RL=%.2f kohm",RL/1000)
printf("\n Re=%.2f kohm",Re/1000)
printf("\n R1=%.2f kohm",R1)
printf("\n R2=%.2f kohm",R2)
