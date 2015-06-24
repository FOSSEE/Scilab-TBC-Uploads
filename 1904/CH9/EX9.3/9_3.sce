//To Determine the Necessary minimum kilovoltampere size of the regulator
//Page 473
clc;
clear;

l=10; //Length of the feeder
S3phi=4000; //Annual Peak Load in kVA
VPpu=1.01; //Primary Feeder Voltage
s1=1.75; // Distance of the Regulator
Rmax=10/100; //Regulation Percent

S=S3phi*(1-(s1/l)); //Uniformly Distributed three phase load
Sph=S/3; //Single Phase Load

Sreg=Rmax*Sph; //Regulated Size

printf('\nThe Calculated Circuit Kilovoltampere Size is %g kVA, \nAnd The corresponding Minimum kilovoltampere size of the regulator size can be found as 114.3 kVA\n',Sreg)
