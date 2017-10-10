clc
T=300 //temperature in Kelvin
gama=1.4
Tf=gama*T
mprintf("Tf=%iK\n",Tf)
P=50*10^5 //pressure in Pascals
V=0.1 //volume in metre-cube
R=8.314
N=(P*V)/(R*Tf)
mprintf("N=%f\n",N)//ans vary due to roundoff error
molmass=28.97 //molar mass of air 
mprintf("Mass of air filled in cylinder=%fkg",N*molmass*10^-3)//ans vary due to roundoff error
