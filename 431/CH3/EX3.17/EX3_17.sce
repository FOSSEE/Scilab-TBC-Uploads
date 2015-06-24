//Calculating regulation
//Chapter 3
//Example 3.17
//page 219
clear;
clc; 
disp("Example 3.17")
kVA=80;                //rating of the transformer
V1=2000;                //primary voltage in volts
V2=200;                 //secondary voltage in volts
f=50;                    //frequency in hertz
Id=8;                    //impedence drop
Rd=4;                    //resistance drop
phi=acosd(0.8)
I2Ze=(V2*Id)/100;
I2Re=(V2*Rd)/100;
I2Xe=sqrt(I2Ze^2-I2Re^2)
reg=((I2Re*cosd(phi))+(I2Xe*sind(phi)))*(100/V2)
printf("percentage regulation=%fpercent",reg)
pf=I2Xe/sqrt(I2Re^2+I2Xe^2)
printf("\nPower factor for zero regulation=%f(leading)",pf)
