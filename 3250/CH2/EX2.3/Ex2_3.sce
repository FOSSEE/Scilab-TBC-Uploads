clc 
// Given that
Hi=1.2 // Initial height in m
H= 0.05 // Height in m
g= 9.81 // Acceleration due to gravity in m/sec^2
Dm = 2700 // Density of molten metal in Kg/m^3
Neta = 0.00273 // Kinetic viscosity in Kg/m-sec 
d= 0.075 // Diameter in m
D = 1 // Internal diameter of ladle in m
// Sample Problem  on page no. 56
printf("\n # PROBLEM 2.3 # \n")
v3= sqrt(2* g * Hi)
Re = Dm*v3*d/Neta
ef=0.075
Cd= (1+ef)^(-1/2)
ef_=0.82
Re_ = (2+ef_)^(-1/2)
v3_ = sqrt(2*g*H)
Re_ = Dm*v3_*d/Neta
At = (%pi/4)*D^2
An = (%pi/4)*d^2
Cd= 0.96
tf= (sqrt(2/g))*(At/An)*(1/Cd)*sqrt(Hi)
m = Dm*An*Cd*sqrt(2*g*Hi)
m_ = Dm*An*Cd*sqrt(2*g*Hi*0.25)
printf("\n Time required to empty the ladle = %f sec, \n Discharge rate are - \n Initially = %f Kg/sec \n When the ladle is 75 percent empty = %f Kg/sec. ",tf,m,m_)
