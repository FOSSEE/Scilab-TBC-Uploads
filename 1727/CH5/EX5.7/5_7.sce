clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
z1=1.2 //m
z2=4 //m
d=5 //cm
//calculations
Va=sqrt(2*g*(z2-z1))
Q=%pi/4 *(d/100)^2 *Va
Pc= - z2*rho*g
P=25*10^3 //Pa
Zab=(101325 - P)/rho/g
//results
printf("rate of discharge = %.4f m^3/s",Q)
printf("\n Pressure at C = %.2f kPa",Pc/1000)
printf("\n Max. permissible length = %.2f m",Zab)
