//Example 7_1_u2
clc();
clear;
//To calculate the mean free path and mean free time
mn=0.26*0.91*10^-30           //units in Kgs
un=1000*10^-4        //units in cm^2 V^-1 s^-1
e=1.6*10^-19          //units in coulombs
tc=(mn*un)/e         //units in s
tc1=tc*10^12         //units in ps
printf("The mean free time is %.3fps",tc1)
vth=10^7
meanfreepath=vth*tc*10^7       //units in nm
printf("\nThe mean free path is given by L=%.1f nm",meanfreepath)
