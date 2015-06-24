clc
//initialisation
R=82.07//cm3.atmos.per k
t=132//k
p=37.2//atm
//CALCULATIONS
a=(27*R*R*t*t)/(64*p)
b=(R*t)/(8*p)
//results
printf(' a= % 1f atmos cm ^6',a)
printf(' \nb= % 1f cm^3',b)
