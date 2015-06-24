//chapter 16
//example 16.3
//page 477
clear all;
clc ;
//given
Vr=2;//ripple voltage
Eo=20;//supply voltage
Eomin=Eo-1;
Eomax=Eo+1;
theta=65;//in degrees
T2=4.17;//time for 90 degrees ms
T3=3;//time for theta ms
Il=40;//mA
t2=1.17;//ms
t1=T2+T3;
C=Il*t1/Vr;
printf("\nReservoir capacitor is %d microF,use standard value 150 microF",(C))
//diode peak repetitive current
Ifm=(Il*(t1+t2)/t2);//mA
printf("\ndiode peak repetitive current IFM(rep)=%d mA",Ifm)
//diode avg forward current
Io=Il/2;
printf("\ndiode average forward current(Io)=%d mA",Io);
//diode maximum reverse voltage
Vp=Eomax+2*0.7;//Vf=0.7V
Er=Vp;
printf("\nEr=%.1f V",Er);
printf("\n1N4001 is required")

