clc;
clear;

printf("\n Example 9.24");

d_v=1;//diameter of the vessel
L=0.3;//diameter of propeller agitator
N=2.5;//rotating speed of propeller agitator
T=310;//Temperature
G=0.5;//circulation speed of cooling water
d_o=25e-3;//outer diameter of stainless steel coil
d=22e-3;//inner diameter of stainless steel coil
d_w=(d_o+d)/2;
d_c=0.8;//diameter of helix
T_m=290;//mean temperature
k1=0.59;
Meu1=1.08e-3;
C_p1=4.18e3;
x_w=1.5e-3;

//From equations 9.202 and 9.203, the inside film coefficient for the water
//is given by:
h_i=(k1/d)*(1+3.5*(d/d_c))*0.023*(d*1315/Meu1)^0.8*(C_p1*Meu1/k1)^0.4;
//The external film coefficient is given by equation 9.204:
C_p2=1.88e3;//Specefic heat capacity
Meu2=6.5e-3;//viscosity
k2=0.40;
rho=1666;
Meu_s=8.6e-3;
h_o=0.87*(C_p2*Meu2/k2)^(1/3)*(L^2*N*rho/Meu2)^0.62*(Meu2/Meu_s)^0.14*k2/d_v;

k_w=15.9;
R_o=0.0004;
R_i=0.0002;
U_o=((1/h_o)+(x_w*d_o/(k_w*d_w))+(d_o/(h_i*d))+(R_o)+(R_i*d_o/d))^-1;
printf("\n\n The overall coeffecient of heat transfer = %.0f W/m^2.K",U_o);

