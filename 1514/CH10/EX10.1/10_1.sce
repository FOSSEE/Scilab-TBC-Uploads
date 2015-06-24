//chapter 10
//example 10.1
//page 289
clear all;
clc ;
//given
R1=1 ; 
R2=5.6;//in Mohm
Rd=2.7 ;//in Kohm
Yos=10;// output admittance in microS
rd=(1/Yos)*10^3;//drain resistance in Kohm
gm=3;//in mA/V
Rg=R1*R2/(R1+R2);
Zi=Rg*10^3;
Zo=Rd*rd/(Rd+rd);
Av1=-gm*(Zo);
Av2=-gm*Rd;
printf('\nInput Impedance(Zi)=%d kohm',Zi)
printf('\nOutput Impedance(Zo)=%.2f kohm',Zo)
printf('\nVoltage Gain:\nAv=%.1f or Av=%.1f ',Av1,Av2)
