// determine mach number
clc
Z=10000 //  altitude meter
T=223.3 // temperature in kelvin
k=1.4 // constant of 
R=287 // constant
d=800*1000 // speed of aircraft flies
c1=3600 // minutes and second
c=sqrt(k*T*R)
mprintf('\n velocity of sound  C = %f m/s',c)
v=d/c1
mprintf('\n speed of aircraft  V = %f m/s',v)
M=v/c
mprintf('\n Mach number M =V/C = %f ',M)
