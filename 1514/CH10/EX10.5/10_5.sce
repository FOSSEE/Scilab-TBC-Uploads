//chapter 10
//example 10.5
//page 297
clear all;
clc ;
//given
R1=1.5 ; 
R2=1;//in Mohm
Rl=12;
Rs=5.6;//in kohm
gm=3 ;//mA/V
Zi=1000*R1*R2/(R1+R2);
Rp=1/gm;//in kohm
Zo=1000*(Rs*Rp)/(Rs+Rp);
Av=(gm*((Rs*Rl)/(Rs+Rl)))/(1+gm*((Rs*Rl)/(Rs+Rl)));
printf('\nInput Impedance(Zi)=%d kohm',Zi)
printf('\nOutput Impedance(Zo)=%d ohm',ceil(Zo))
printf('\nVoltage Gain:\nAv=%.2f ',Av)
