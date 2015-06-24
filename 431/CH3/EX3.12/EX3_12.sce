//Calculating equivalent impedence referred to primary
//Chapter 3
//Example 3.12
//page 216
clear;
clc; 
disp("Example 3.11")
f=50;                //frequency in hertz
r=6;                //turns ratio
R1=0.90;             //primary resistance in ohms
R2=0.03;              //secondary resistance in ohms
X1=5;                 //primary reactance in ohms
X2=0.13;              //secondary reactance in ohms
I2=200;                //full-load current
Re=(R1+(R2*r^2));
printf("equivalent resistance reffered to primary,Re=%fohms",Re);
Xe=(X1+(X2*r^2));
printf("\nequivalent reactance reffered to primary,Xe=%fohms",Xe);
Ze=sqrt(Re^2+Xe^2);
printf("\nequivalent impedance reffered to primary,Ze=%fohms",Ze);
Ii2=r*I2;
printf("\nsecondary current reffered to primary side=%fA",Ii2);
printf("\n(a)Voltage to be applied to the high voltage side=%dvolts",(Ii2*Ze));
printf("\n(b)Power factor=%f",(Re/Ze));
