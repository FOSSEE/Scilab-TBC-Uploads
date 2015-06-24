clc 
// Given that
h=15 // Height of spur in cm
l= 50 // Length of cast in cm
w= 25 // weidth of cast in cm
h1= 15 // Height of cast in cm
g= 981 // Acceleration due to gravity in cm/sec^2
Ag= 5 // Cross sectional area of the grate in cm^2
Dm = 7800 // Density of molten Fe in Kg/m^3
Neta = 0.00496 // Kinetic viscosity in Kg/m-sec
theta = 90 // Angle in degree
Eq = 25 // (L/D) Equivalent 
// Sample Problem 2 on page no. 53
printf("\n # PROBLEM 2.2 # \n")
v3= sqrt(2* g * h)*(10^(-2))
d= sqrt((Ag*4)/(%pi))*(10^(-2))
Re = Dm*v3*d/Neta
f = 0.0791*(Re)^(-1/4)
L=0.12 // in meter
Cd= (1+0.45+4*f*((L/d)+Eq))^(-1/2)
v3_ = Cd*v3
Re_ = (v3_/v3)*(Re)
f_ = 0.0791 *(Re_)^(-1/4)
Cd_ = (1+0.46+4*f_*(L/d + Eq))^(-1/2)
v3__ = Cd_*v3
V = l*w*h1
tf= (V/(Ag*v3__))*(10^-2)
printf("\n Filling time for first design = %f sec. ", tf)
