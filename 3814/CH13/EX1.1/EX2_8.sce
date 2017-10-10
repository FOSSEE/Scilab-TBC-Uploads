// to calculate force acting on 1mx 2m
clc
A=1*2
v=(100*1000)/3600 // 100km/hr
mprintf('Velocity of the wind = %f m/s',v)
density=1.2// in kg/m3 
p0=(density*v^2)/2
mprintf(' \n P0= %d N/m2',p0)
F=p0*A
mprintf('\n Force F=p0A = %d N',F)
