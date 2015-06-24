//To Calculate the percent voltage drop in the main for a lumped load
//Page 202
clc;
clear;

K=0.01; //Percentage Value
Sn=500; //Load in kVA
pf=0.9; //Lagging
s=1; //Length of the feeder
VD=s*K*Sn; //Voltage drop in percent

printf('The Percent Voltage drop in the Main is %g percent\n',VD)
