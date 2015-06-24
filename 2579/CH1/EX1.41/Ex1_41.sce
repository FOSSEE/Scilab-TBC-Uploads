//Ex:1.41
clc;
clear;
close;
Rl=1.5;// loss resistance in ohm
le_y=1/50;// the ratio of le to y
Rr=80*(%pi^2)*(le_y)^2;// radiation resistance in ohm
Rt=Rl+Rr;// total resistance in ohm
n=Rr/Rt;// effeciency
printf("The effeciency = %f %%", n*100);
