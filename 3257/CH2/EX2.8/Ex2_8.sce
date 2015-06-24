// Temperature rise in simple deformation
clc
d = 25 // diameter of cylinder in mm
h_i = 25 // Height of cylinder in mm
cp = 1255 // specific heat capacity in J/kg.K
rho = 2768 // density in kg
del_t = 55 // temperature change in K
K = 104 // in MPa
n = 0.5
printf("\n Example 2.8")
v = %pi/4*(d*1e-3)^2*h_i*1e-3 // volume of cylinder
H = cp*rho*v*del_t // heat in Joule

epsilon = (H/(v*K*1e6/(n+1)))^(1/(n+1))
h_f = h_i/exp(epsilon)

printf("\n Final height of specimen is %.1f mm",h_f)

