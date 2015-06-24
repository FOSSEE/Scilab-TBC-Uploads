//chapter 18
//example 18.6
//page 578
clear all;
clc ;
//given
VB1B2=15;
eta=0.7;//intrinsic standoff ratio
ec=0.7+(eta*VB1B2);//capacitor voltage
VEB1sat=2.5;//saturation voltage when capacitor is discharged
Eo=2.5;//capacitor voltage at start of each charging cycle
t=0.1*10*log((15-2.5)/(15-11.2));
f=1000/t;
printf("\nTypical frequency of oscillation is approximately %d Hz",ceil(f))



