// Example 18.14, page no-468
clear
clc
epsr=4.94
eps=8.854*10^-12
d=2.07*10^3//kg.m^-3
w=32.07
N=6.023*10^23*10^3*d/w
alfe=3*eps*(epsr-1)/(N*(epsr+2))
printf("The electronic polarisability of sulphur is %f * 10^-40 F.m^2",alfe*10^40)
