//Calculate percentage regulation
//Chapter 3
//Example 3.15
//page 217
clear;
clc; 
disp("Example 3.15")
kVA=30;                //rating of the transformer
V1=6000;                //primary voltage in volts
V2=230;                //secondary voltage in volts
R1=10;                //primary resistance in ohms
R2=0.016;              //secondary resistance in ohms
Xe=23;                    //total reactance reffered to the primary
phi=acosd(0.8);                //lagging
Re=(R1+((V1/V2)^2*R2))
printf("equivalent resistance,Re=%fohms",Re)
I2dash=(kVA*1000)/V1;
V2dash=5847;
Reg=((I2dash*((Re*cosd(phi))+(Xe*sind(phi))))*100)/V2dash;
printf("\npercentage regulation=%fpercent",Reg)