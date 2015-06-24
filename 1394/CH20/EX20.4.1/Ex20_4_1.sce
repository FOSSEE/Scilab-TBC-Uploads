
clc
//initialization of variables
T = 673 // Kelvin
M = 28 
sigma = 3.80 // angstroms
omega = 0.87
d1 = 0.05 //m
v1 = 17 //m/sec
Mu1 = 3.3*10^-5 // kg/m-sec
p1 = 5.1*10^-1 // kg/m^3
Cp1 = 1100 // J/kg-K
k2 = 42 // W/m-K
l2 = 3*10^-3 //m
d3 = 0.044 //m
v3 = 270 //m/sec
p3 = 870 //kg/m^3
Mu3 = 5.3*10^-4 // kg/m-sec
Cp3 = 1700// J/kg-K
k3 = 0.15 //W/m-K
//Calculations
kincal = (1.99*10^-4)*(sqrt(T/M))/((sigma^2)*omega)//W/m^2-K
k = kincal*4.2*10^2// k in W/m-K
h1 = 0.33*(k/d1)*((d1*v1*p1/Mu1)^0.6)*((Mu1*Cp1/k)^0.3)//W/m^2-K
h2 = k2/l2 //W/m^2-K
h3 = 0.027*(k3/d3)*((d3*v3*p3/Mu3)^0.8)*((Mu3*Cp3/k3)^0.33)//W/m^2-K
U = 1/((1/h1)+(1/h2)+(1/h3))//W/m^2-K
//Results
printf("The overall heat transfer co efficient is %.f W/m^2-K",U)

