clc();
clear;
//Given :
area = 50000; // area of hysteresis on a graph
axis1 = 10^-4 ; // units of scale in Wb/m^2
axis2 = 10^2; // units of scale in A/m
vol = 0.01; // volume in m^3
F = 50; //frequency in Hz
E1 = area*axis1*axis2; // Energy lost per cycle in J/m^3
E2 = E1*vol ; // Energy lost in core per cycle in J
P = E2*F; // Power loss in W
printf("Power loss = %d W ",P);


