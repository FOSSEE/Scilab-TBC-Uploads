//Ex:1.38
clc;
clear;
close;
le_y=1/150;// the ratio of le to y
Rr=16*(%pi^2)*(le_y)^2;// radiation resistance in ohm
printf("The radiation resistance = %f*10^-3 ohm", Rr*1000);