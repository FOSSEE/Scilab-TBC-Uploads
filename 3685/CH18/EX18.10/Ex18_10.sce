clc
b = 10 // width of plate in cm
h = 15 // Height of plate in cm
hr = 8.72 // Radiative heat transfer coefficient in W/m^2K
tw = 140 // temperature of wall in degree Celsius
tf = 20 // Atmospheric temperature in degree Celsius
v = 2.109e-5 // Coefficient of dynamic viscosity in m^2/s
Pr = 0.692 // Prantl number
K = 0.0305 // Thermal conductivity in W/mK
L = 0.15 // characteristic length in m
g = 9.81 // Gravitational acceleration in m/s^2

printf("\n Example 18.10\n")
A = 2*b*1e-2*h*1e-2 // total area of plate
t_mean = (tw+tf)/2 +273
B = 1/t_mean
del_t = tw-tf
Gr = g*B*del_t*L^3/v^2 // Grashoff number
x = Gr*Pr
if x<1e9 then
    Nu = 0.59*(Gr*Pr)^0.25
end
hc = Nu*K/L
Q = (hc+hr)*A*del_t // Rate of heat dissipation
printf("\n Rate of heat dissipation is %f W",Q)
//The answers vary due to round off error

