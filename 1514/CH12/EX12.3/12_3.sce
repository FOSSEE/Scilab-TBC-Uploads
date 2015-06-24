//chapter 12
//example 12.3
//page 371
clear all;
clc ;
//given
Vcc=20;//supply voltage
Rl=500;//load resistance
Av=75;//closed loop voltage gain
f1=30;// i/p signal frquency Hz
hfe=80;
hie=1.4;
Ve=5;Vce=3;
VR2=5.7;
Vbe=5;
VR3=Vcc-Vce-Ve;
R3=Rl/10;
Ic=VR3/R3*10^3;
printf("\ncollector current = %d microA,\ntoo small for operations of transistor,\nSo Ic=1 mA",Ic)
Ic=1;
R3=VR3/Ic;
printf('\nR3=%d kohm which is standard value',R3)
R45=(Ve/Ic);
R4=1000*((R3*Rl)/(R3+Rl))/Av;
printf("\nR4=%d ohm ,use standard value 150 ohm",R4);R4=150;
R5=R45-R4/1000;
printf("\nR5=%.2f kohm ,use standard value 5.6 kohm",R5);
R5=5.6;//kohm
//potential divider current and resistors
I2=Ic/10;
Ve=0.7;
R2=(Vbe+Ve)/I2;
printf("\nR2=%d kohm,use standard value 56 kohm",R2);R2=56;
R1=(Vcc-VR2)/I2;
printf("\nR1=%d kohm,use standard value 150 kohm",R1);R1=150;
Zb=hie+(1+hfe)*R4/1000;
//input impedance
Zi=1/((1/Zb)+(1/R1)+(1/R2));
printf("\ninput impedance=%.2f kohm",(Zi));
//capacitance
XC1=Zi/10;
XC1=1;
C1=10^3/(2*%pi *f1*XC1);
printf("\ncapacitor C1=%.1f microF,use standard value 5.6 microF",(C1))
XC2=R4;
C2=10^6/(2 * %pi *f1* XC2);
printf("\ncapacitor C2=%.1f microF,use standard value 39 microF",C2)
C3=10^3/(2*%pi *f1*Rl/10);
printf("\ncapacitor C3=%.3f microF,use standard value 0.1 microF",C3)










