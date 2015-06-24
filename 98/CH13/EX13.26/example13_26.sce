//Chapter 13
//Example 13_26
//Page 341

clear;clc;

I1=50;
I2=40;
r=0.1;
v=250;
Rae=0.1;
Rnl=0.2;
Rbg=0.1;

Vel=v-I1*Rae-(I1-I2)*Rnl;
Vlg=v+(I1-I2)*Rnl-I2*Rbg;

printf("Voltage at the load end on the +ve side = %d V \n\n", Vel);
printf("Voltage at the load end on the -ve side = %d V \n\n", Vlg);
