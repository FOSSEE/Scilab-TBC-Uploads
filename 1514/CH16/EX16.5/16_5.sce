//chapter 16
//example 16.5
//page 484
clear all;
clc ;
//given
Vs=15;//dc supply 
Vref=6;
printf("\nSuitable device is 1N753,from datasheet")
Vz=6.2;//nominal voltage
P=400;//nominal power in mW
Izmin=5;
Izm=P/Vz;//Izm=Ilmax+Izmin
R1=10^3*(Vs-Vz)/Izm;
printf("\nseries resistance R1=%d ohm,use standard value 150 ohm",R1);R1=150;
Izm=1000*(Vs-Vz)/R1;
Ilmax=Izm-Izmin;
printf("\nMax load current =%d mA ",ceil(Ilmax))



