//Example 7_1_u2
clc();
clear;
//To calculate the mean free path
mn=0.26*0.91*10^-30
un=1000*10^-4
e=1.6*10^-19
tc=(mn*un)/e
vth=10^7
meanfreepath=vth*tc*10^7       //units in nm
printf("The mean free path is given by L=%.1f nm",meanfreepath)
