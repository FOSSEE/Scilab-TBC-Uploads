// Example 2.25 page no-83
clear
clc

m=9.1*10^-31//kg
k=1.38*10^-23
h=6.626*10^-34
T=300
mp=0.6
si=5*10^22
at=10^8
Nc=si/at
Nv=2*(2*%pi*m*k*T*mp/h^2)^(3/2)
printf("\nNv=%.2f * 10^19 /cm^3",Nv/10^25)
Kt=0.026
Ediff=Kt*log(1.17*10^19/(5*10^14))
printf("\nEf-Ev =%.2f eV\nTherefore, EF is above Ev",Ediff)
