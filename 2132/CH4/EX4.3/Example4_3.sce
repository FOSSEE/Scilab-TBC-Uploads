//Example 4.3
clc;
clear;
close;
format('v',7);
//Given data :
S1=13.6;//sp. gravity of mercury
S2=1;//sp. gravity of water
H1=5;//m
H2=S1*H1/S2;//m
disp("(i) Pressure is "+string(H2)+" meter of water.");
S2=0.79;//sp. gravity of kerpsene
H1=5;//m
H2=S1*H1/S2;//m
disp("(ii) Pressure is "+string(H2)+" meter of kerosene.");
S2=1.7;//sp. gravity of fluid
H1=5;//m
H2=S1*H1/S2;//m
disp("(iii) Pressure is "+string(H2)+" meter of fluid.");
