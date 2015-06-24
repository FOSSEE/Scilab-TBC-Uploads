//example 1
// water flow through garden hose nozzle
clear
clc
t=50 //time taken to fill the bucket in seconds
v=10 //volume of bucket in gallon
V=v*3.7854/t //volume flow rate in litres/second
d=1 //density of water in kg/l
M=V*d //mass flow rate in kg/s
A=%pi*(0.4)^2*10^-4 //area of exit in m^2
v1=V/(A*1000) //average velocity of water at exit in m/s
printf("\n Hence, the volume flow rate of water through the hose is = %.3f L/s. \n",V);
printf("\n The mass flow rate through the hose is = %.3f kg/s. \n",M);
printf("\n The average velocity of water at the nozzle exit is = %.1f m/s. \n",v1);