// Problem no 15.8,Page no.356

clc;clear;
close;

A=1600*(3600)**-1 //Kg/sec //Amount of steam generated
v=0.24 //m**3/kg //specific volume of steam
sigma_t=4*10**6 //MPa //Tensile stress
V_1=30 //m/s //Velocity of steam
p=1*10**6 //Pa //Steam pressure

//Calculation

V=A*v //m**3/s //volume of steam 
D=(V*(%pi*4**-1*V_1)**-1)**0.5*100 //Diameter of %pipe
t=p*D*(2*sigma_t)**-1 //Thicknes of %pipe

//Result
printf("Diameter of boiler is %.2f",D);printf(" cm")
printf("\n Thickness of steel plpe is %.2f",t);printf(" cm")
