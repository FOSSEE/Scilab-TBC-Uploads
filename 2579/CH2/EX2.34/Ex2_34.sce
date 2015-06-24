//Ex:2.34
clc;
clear;
close;
// For a closed surface, a sphere of radius r is choosen. To find the total radiated power, the radiated component of the power density is integrated over its surface. therefore,
// Wt=double integration of (ar.Ao.(sin(x)/r^2))*(ar.r^2.sin(x)) with limits from 0 to 2*pi and from 0 to pi, and on integration we get , pi^2*Ao watts
printf("The total radiated power= pi^2*Ao watts");