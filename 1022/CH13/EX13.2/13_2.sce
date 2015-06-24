clc
//initialisation of variables
k= 0.384 //Btu/hr ft F
Tsat= 170.03 //F
hfg= 996.2 //Btu/lbm
T= 130 //F
l= 5 //ft
P= 6 //psia
g= 4.17*10^8 //ft/h^2
d= 0.042 //ft
p= 61.2 //lbm/ft^3
u= 1.05 //lbm/ft h
//CALCULATIONS
dt= Tsat-T
Tf= (Tsat+T)/2
hc= 0.943*((k^3*p^2*g*hfg)/(l*u*dt))^(1/4)
hc1= 0.725*((k^3*p^2*g*hfg)/(d*u*dt))^(1/4)
//RESULTS
printf ('Condensation heat tranfer coefficient if the tube is vertical= %.f Btu/h ft^2 F',hc)
printf (' \n Condensation heat tranfer coefficient if the tube is horizontally= %.f Btu/h ft^2 F',hc1)
