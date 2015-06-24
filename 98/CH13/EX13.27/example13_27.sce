//Chapter 13
//Example 13_27
//Page 342

clear;clc;

v1=240;
v2=240;
r1=5;
r2=6;
Rae=0.1;
Rnl=0.1;
Rbc=0.1;

I1=v1/r1;
I2=v2/r2;
In=I1-I2;

V1=v1+I1*Rae+In*Rnl;
V2=v2-In*Rnl+I2*Rbc;

printf("Current on +ve outer = %d A \n\n", I1);
printf("Current on -ve outer = %d A \n\n", I2);
printf("Current in nuetral = %d A \n\n", In);

printf("Voltage at the load end on the +ve side = %.2f V \n\n", V1);
printf("Voltage at the load end on the -ve side = %.2f V \n\n", V2);
