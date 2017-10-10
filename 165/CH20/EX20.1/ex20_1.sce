//Example 20.1
close;
clc;
//Given data
V1=20;    //volts
V2=30;    //volts
R1=100;   //ohm
//RF test power
rf=(V2*V2-V1*V1)/(4*R1);
printf('\nRF test power is %0.2f W\n',rf);