//Exa 2.11
clc;
clear;
close;
format('v',6);

//Given Data
V=12;//Volt
I=6;//Ampere
t=1.5;//hr
t=t*3600;//sec
deltaU=-750;//KJ
W=V*I*t/1000;//KJ
Q=W+deltaU;//KJ
disp(Q,"Heat transfer in KJ  : ");
