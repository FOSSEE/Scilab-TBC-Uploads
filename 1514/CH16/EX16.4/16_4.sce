//chapter 16
//example 16.4
//page 482
clear all;
clc ;
//given
Vs=24;//dc supply 
printf("\nSuitable device is 1N757,from datasheet")
Vz=9.1;//nominal voltage
Iz=20;//nomonal current
R1=1000*(Vs-Vz)/Iz;
printf("\nseries resistance R1=%d ohm,use standard value 820 ohm",R1);R1=820;
Vs=20;
Iz=1000*(Vs-Vz)/R1;
printf("\nWhen Vs=20 V,Iz=%.1f mA ",Iz);


