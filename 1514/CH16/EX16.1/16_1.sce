//chapter 16
//example 16.1
//page 473
clear all;
clc ;
//given
Eo=20;//supply voltage
Rl=500;//load resistance in ohm
Vr=10/100*Eo;//ripple voltage
fin=60;//ip frequency Hz
Eomin=Eo-1;
Eomax=Eo+1;
theta1=asin(Eomin/Eomax);//in radians
theta=(theta1*180)/%pi;//in degrees
T=1000/60;//in  ms
//for 360 degree,T
//for 180=>
T1=T *180/360;
T2=T1/2;//time for 90 degrees
T3=T*theta/360;//time for theta
t1=T1+T2+T3;//total time
Il=1000*Eo/Rl;//current in mA
c=Il*t1/Vr;
printf("\nReservoir capacitor is %d microF,use standard value 330 microF",ceil(c))









