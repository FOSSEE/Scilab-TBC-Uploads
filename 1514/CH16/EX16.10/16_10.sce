//chapter 16
//example 16.10
//page 504
clear all;
clc ;
//given
Vo=10;//op voltage
I2=1;//error amplifier ip bias current
Vref=7.15;//V reference
VR2=Vref;
R2=Vref/I2;
printf("\nR2=%.2f kohm,standard value 6.8 kohm",R2);R2=6.8;
I2=Vref/R2;//mA
R1=(Vo-Vref)/I2;
printf("\nR1=%.1f kohm,standard value 2.7 kohm",R1);
Vs=Vo+5;//for satisfactory opertation of pass Xtor
I=25;//internal ckt current Istandby+Iref
//internal power dissipation
Pi=Vs*I;
printf("\ninternal power dissipation=%d mW",Pi)
//max power dissipation in series pass Xtor
PDmax=1000;
P=PDmax-Pi;
printf("\nmax power dissipation in series pass transistor=%d mW",P)
//maximum load current
Ilmax=P/(Vs-Vo);
printf("\nmaximum load current=%d mA",Ilmax);





