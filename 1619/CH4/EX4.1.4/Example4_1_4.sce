//Example 4.1.4 page 4.6

clc;
clear;

R= 0.65;
P0= 10*10^-6;
Ip= R*P0;
Ip=Ip*10^6; //convertinf in uA...
printf("The generated photocurrent is %.1f uA",Ip);
