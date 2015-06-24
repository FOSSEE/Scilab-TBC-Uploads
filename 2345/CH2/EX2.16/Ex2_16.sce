//Finding resistance
//Example 2.16(pg. 28)
clc
clear
a=15//cross section area in cm^2
l=100000//length in cm
p0=7.6*(10^-6)//specific resistance at 0 degree C in ohm-cm
k0=0.005//temp coefficient at 0 degree C
t=50//temp in degree C
p50=p0*[1+(t*k0)]//resistivity at 50 degree C
R50=p50*(l/a)
printf('Thus resistance at 50 degree C is %3.5f ohms \n',R50)
