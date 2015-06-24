//chapter 19
//example 19.2
//page 597
clear all;
clc ;
//given
Vcc=30;//supply voltage
Is=10;//supply current
Rcell=1;//cell resistance
R1=Vcc/Is-Rcell;
Rdark=100;//cell dark resistance kohm
Idark=Vcc/(R1+Rdark);
printf("\nRequired series resistance is %d kohm \nLevel of Dark current is approximately %.1f mA",R1,Idark)
