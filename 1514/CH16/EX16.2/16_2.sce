//chapter 16
//example 16.2
//page 475
clear all;
clc ;
//given
Eo=20;//supply voltage
Eomin=Eo-1;
Eomax=Eo+1;
theta1=asin(Eomin/Eomax);//in radians
theta=(theta1*180)/%pi;//in degrees
T=1000/60;//in  ms
T1=T *180/360;
T2=T1/2;//time for 90 degrees
T3=T*theta/360;//time for theta
t1=T1+T2+T3;//total time in ms
t2=1.17; //ms
Il=40;//mA
//diode peak repetitive current
Ifm=ceil(Il*(t1+t2)/t2);//mA
//diode avg forward current
Io=Il;
Vp=Eomax+0.7;//Vf=0.7V
//diode maximum reverse voltage
Er = 2 * Vp
printf("\nIFM(rep)=%d mA",Ifm)
printf("\nFor 1n4001,\nVr=50 V\nIo=1 A\nIFM=10 A\nThis is suiatable for required application.")
Ifmsurge=30;
printf("\nIFM(surge)=%d A",Ifmsurge)
Rs=Vp/Ifmsurge;
printf("\nRs=%.1f ohm",Rs);
