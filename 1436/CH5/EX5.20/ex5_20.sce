//Example 5.20, page no-317
clear
clc

ei=0.15*10^-3
em=2*ei
B=0.1
l=60*10^-3
v=em/(B*l)
printf("Velocity of flow V = %.2f m/sec = %.1f cm/sec",v,v*100)
