
//Exa:3.3
clc;
clear;
close;
//Given:
Bw=12;//in KHz
Mod_mn=300;
Mod_mx=3000;
dev=6;//in KHz
m1={(Bw-dev)*1000}/Mod_mn;
m2={(Bw-dev)*1000}/Mod_mx;
printf("\n 1)modulation indexat 300Hz = %f ",m1);
printf("\n 2)modulation indexat 3000Hz = %f ",m2);