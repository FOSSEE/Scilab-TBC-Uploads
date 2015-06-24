//chapter 15
//example 15.1
//page 451
clear all;
clc ;
//given
vcc=10;//supply voltage(dual supply)
fo=1;//op frequency
Av=29;//voltage gain
Ibmax=500;//base current nA
I1=(100*Ibmax)/1000;//nA
vo=vcc-1;//op voltage
vi=vo/Av;//ip voltage
R1=1000*vi/I1;
printf("\nR1=%.1f kohm,use standard value 5.6 kohm",R1);R1=5.6;
R2=Av*R1;
printf("\nR2=%d kohm,use standard value 180 kohm",R2);R2=180;
R3=R2;
printf("\nR3=%d kohm",R3);
R=R1;
printf("\nR=%.1f kohm",R);
c=1/(2*%pi*R*sqrt(6));
printf("\nC=%.2f microF, standard value 0.01 microF",c)
