//chapter 5
//example 5.7
//page 168
clear all;
clc ;
//given
Rb=(18*6)/(18+6);
Ze=(27.6+4.5*1000*(1-0.987));
Zi=(86.1*5000)/(86.1+5000);

printf("\nInput Impedance(Ze)=%.1f ohm",Zi);

Av=(0.987*10000)/(Ze);
printf("\nvoltage gain=%d",ceil(Av));
