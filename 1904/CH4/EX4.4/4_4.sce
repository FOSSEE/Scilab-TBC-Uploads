//To Calculate percent voltage drop in the main for a uniformly increasing load
//Page 203
clc;
clear;

K=0.01; //Percentage Value
Sn=500; //Load in kVA
pf=0.9; //Lagging
l=1; //Total Length of the feeder
s=l*2/3; //effective Length of the feeder
VD=s*K*Sn; //Voltage drop in percent

printf('The Percent Voltage drop in the Main is %g percent\n',VD)
