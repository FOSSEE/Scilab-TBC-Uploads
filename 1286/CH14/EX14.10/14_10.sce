clc
//initialisations
r=15*10^10//m
R=7*10^8//m
si=6.72*10^-8//j m^-2 sec^-1 deg^-4
s=81350 //j m^-2 min^-1
//CALCULATIONS
t=(r*r*s)/(R*R*si*60)
T=t^0.25
//results
printf(' \n value of temperature= % 1f k',T)
