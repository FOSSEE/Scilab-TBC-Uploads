//Ex:5.1
clc;
clear;
close;
v1=0.43;//volts
i1=2.5*10^-3;//in Amps.
v2=0.65;//volts
i2=7.4*10^-3;//in Amps.
r1=v1/i1;
r2=v2/i2;
printf("Diode resistance for 2.5A current = %d ohms",r1);
printf("\n Diode resistance for 0.65V = %f ohms",r2);