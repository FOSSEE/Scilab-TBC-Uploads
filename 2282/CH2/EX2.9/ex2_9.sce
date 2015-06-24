// Example 2.9, page no-40
clear
clc

a=(50000/2)*10^3           //Semi-major axis in m
mu=39.8*10^13      //constant G*M in Nm^2/kg

T=2*3.14*sqrt((a^3)/mu)
h=T/(60*60)
x=modulo(T,3600)
m=x/60
s=modulo(x,60)
printf("Orbital time period is given by, T = %dsec\n\t\t\t\t    = %dh %dm %ds",T,floor(h),floor(m),floor(s))//value in book is different for seconds.
