//Example 3.2, Page 80
clc
h=6.63*10^-34//Joule-sec
v=1.635*10^3//m/s
M=4*10^-3//in kg/mole
No=6.02*10^23//atom/mole
m=M/No
printf("\n Mass of Helium atom is %e kg",m)
lambda=h/(m*v)
printf("\n De broglie wavelength is %e m",lambda)