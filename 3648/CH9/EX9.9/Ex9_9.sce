
//Example 9_9
clc();
clear;
//To compare the pressures at A and at B
p=1000    //Units in Kg/Meter^3
va=0.2   //units in meters/sec
vb=2   //units in meters/sec
Pa_Pb=-0.5*p*(va^2-vb^2)    //units in Pa
printf("Pressure Difference at A and B is Pa-Pb=%d Pa therefore pressure at A is High than at B",Pa_Pb)
