//Example 4.1.7 page 4.8

clc;
clear;
Iin= 1;
lamda= 1550*10^-9;
q= 1.602*10^-19;
h= 6.625*10^-34;
c= 3*10^8;
n=0.65;
Ip=n*q*lamda*Iin/(h*c);
Ip=Ip*1000; //converting in mA for displaying...
printf("The average photon current is %d mA",Ip);
