//chapter 10
//example 10.3
//page 292
clear all;
clc ;
//given
Rg=390;
rd=80;
Rl=68;
Rs=2.7;
Rd=4.7;//in kohm;
gm=4000;//in microS
Zi=Rg;
Zo=Rd*rd/(Rd+rd);
Rp=1/rd+1/Rd+1/Rl
Av1=-gm*(1/Rp)/1000;
Av2=-(gm*10^-3*(Rd*Rl)/(Rd+Rl))/(1+gm*Rs*10^-3);
printf('\nInput Impedance(Zi)=%d kohm',Zi)
printf('\nOutput Impedance(Zo)=%.1f kohm',Zo)
printf('\nVoltage Gain:\nAv=%.1f \nWhen capacitor c2 is absent Av=%.1f ',Av1,Av2)
