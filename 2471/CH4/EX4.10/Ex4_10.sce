clear ;
clc;
// Example 4.10
printf('Example 4.10\n\n');
printf('Page No. 106\n\n');

// given
T1 = 150;// Surface temperature in degree celcius
T2 = 20;// Ambient temperature in degree celcius
d = 0.100; //Outside diametr of pipe in m
h = 10;// Outside film coefficient in W/m^2-K
t = 25*10^-3;// thickness of insulation in m
K = 0.040;// Thermal conductivity of insulation in W/m-K

r2 = d/2;//in m
r1 = r2+t;// in m
Q = ((T1-T2)/((1/(2*%pi*r1*h))+(log(r1/r2)/(2*%pi*K))));// in W/m
printf('The heat loss per unit length is %.0f W/m',Q)
