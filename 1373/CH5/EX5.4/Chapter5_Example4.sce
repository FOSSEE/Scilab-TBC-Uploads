//Chapter-5, Example 5.4, Page 165
//=============================================================================
clc
clear


//INPUT DATA
w=5.5;//Weight of the sphere in kg
Ti=290;//Initial temperature in degree C
Tl=15;//Temperature of liquid in degree C
h=58;//Heat transfer coefficient in W/m^2.K
Tf=95;//Final temperature in degree C
k=205;//Thermal conductivity in W/m.K
c=900;//Specific heat in J/kg.K
p=2700;//Density in kg/m^3

//CALCULATIONS
V=(w/p);//Volume of the sphere in m^3
R=((3*V)/(4*3.14))^(1/3);//Radius of sphere in m
Lc=(R/3);//Corrected length in m
t=-log((Tf-Tl)/(Ti-Tl))/((h*3)/(p*c*R));//Time at which rod temperature becomes 95 degree C in s

//OUTPUT
mprintf('Time at which rod temperature becomes 95 degree C is %3.0f s',t)

//=================================END OF PROGRAM==============================
