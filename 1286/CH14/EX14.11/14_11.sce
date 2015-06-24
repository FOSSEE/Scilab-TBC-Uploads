clc
//initialisation
s=8.2*10^4
si=5.67*10^-8//j m^-2 sec^-1 deg ^-4
a=32
//CALCULATIONS
r2=a/2
r1=(r2*3.14)/(60*180)
r=r1^2
t=s/(r*60*si)
T=t^0.25
//results
printf(' \n surface temperature of sun= % 1f k',T)
