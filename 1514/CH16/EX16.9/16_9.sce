//chapter 16
//example 16.9
//page 4
clear all;
clc ;
//given
Ilmax=100;//maximum op current
Vs=20;//supply voltage
//maximum op voltage 10-15V
Vomin=10;Vomax=15;
Vz1=Vomin/2;
Vz2=Vomax/2;
printf("\nSuitable device is 1N753,from datasheet")
Vz=6.2;//nominal voltage
Izr=20;
Iz=Izr;
Voavg=12.5;
R1=1000*(Voavg-Vz)/Iz;
printf("\nR1=%d ohm,standard value 330 kohm",R1);R1=330;
//I3>Ibmax for opAmp,let
I3min=1;
//Vo=min,wiper at top of R4
R3R4=Vz/I3min;
VR3=Vz;
R2=(Vomin-VR3)/I3min;
printf("\nR2=%.1f kohm,standard value 3.3 kohm",R2);R2=3.3;
//Vo=max,wiper at bottom of R4
I3max=Vomax/(R2+R3R4);
R3=Vz/I3max;
R4=(R3R4)-R3;
printf("\nR3=%.1f kohm",R3);
printf("\nR4=%.1f kohm,standard value 3 kohm",R4);
//Q1 specification
P1=(Vs-Vomin)*(Ilmax+Iz+I3min);
P1=P1/1000;
printf("\nP1=%.2f W",P1)
Vcemax=Vs;
ICmax=Ilmax+Iz+I3min;
printf("\nVcemax=%d V,ICmax=%d mA",Vcemax,ICmax)

