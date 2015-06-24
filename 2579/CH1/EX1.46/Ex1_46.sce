//Ex:1.46
clc;
clear;
close;
Rl=1.5;// loss resistance in ohm
dl_y=1/15;// the ratio of dl to y(wavelength)
Rr=80*(%pi^2)*(dl_y)^2;// radiation resistance in ohm
Rt=Rl+Rr;// total resistance in ohm
n=Rr/Rt;// effeciency
printf("The radiation resistance = %f ohm", Rr);
printf("\n The effeciency = %d %%", n*100);
