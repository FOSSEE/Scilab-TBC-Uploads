clc
Pf=30*10^5 //pressure in pascal
P0=50*10^5 //pressure in pascal
T0=300 //temperature in Kelvin
gama=1.4
Tf=T0*((Pf/P0)^((gama-1)/gama))
mprintf("Tf=%fK\n",Tf)//ans vary due to roundoff error
V=0.1 //volumme in metre-cube
M=28.97*10^-3 //molar mass of air
R=8.314
mprintf("m0-mf=%fkg",(M*V/R)*((P0/T0)-(Pf/Tf)))//ans vary due to roundoff error



