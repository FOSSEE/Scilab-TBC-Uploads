// Example 3.3, page no-73
clear
clc

mu=39.8*10^13        // Nm^2/kg
P=7000*10^3          // Perigee distance in m
e=0.69               // eccentricity of eliptical orbit
w=60/2               // angle made by line joing centre of earth and perige                      e with the line of nodes
k=(e/sqrt(1+e))
k=floor(k*100)/100
v=2*(sqrt(mu/P))*k*sin(w*%pi/180)
printf("The velocity thrust required to rotate the perigee point\n by desired amount is given by, v=%.1f m/s = %.3fkm/s",v,v/1000)
