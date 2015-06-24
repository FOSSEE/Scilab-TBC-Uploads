clc;funcprot(0);......//Example 4.13
//Initialization of variables
P=5*10^5;.........//Pressure of air in bar
Di=0.1;...........//Diameter of the Sphere 1 in m
Do=0.15;.......//Inner diameter of Sphere 2 in m
Tw=50;........//Inner surface Temperature of spheres in degrees celcius
Ta=20;.............//Outer surface Temperature of spheres in degrees celcius
mu=18.8*10^-6;.......//Viscosity in N m^2
K=26.65*10^-3;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.7;......//Prandlt no
R=287;..........//Universal gas contant in J/kg K
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in degrees celcius
B=1/(Tf+273);........//Temp inverse in K^-1
rho=P/(R*(Tf+273));........//Density in kg/m^3
v=mu/rho;...........//Viscosity in m^2/s
t=(Do-Di)/2;.........//Thickness of spheres
Gr=(g*B*(Tw-Ta)*t^3)/(v^2);.......//Grashoff No
Ra=(t/(Do*Di)^4)*((Gr*Pr)/((Di)^(-7/5)+(Do)^(-7/5))^5);...........//Grashof number
Keff=K*0.744*(Pr/(0.861+Pr))^(1/4)*(Ra)^(1/4);........//Effective thermal conductivity in W/mK
Q=Keff*((%pi*Di*Do)/t)*((2*Tw)-Ta);.........//Heat transfer rate in W
disp(Q,"Heat transfer rate in W:")
//For air at atmostpheric pressure
rho1=1.15;...........//Density of atmosphere in kg/m^3
v1=16.43*10^-6;...........//Viscosity of atmosphere in m^2/s
Gr1=(g*B*(Tw-Ta)*t^3)/(v1^2);.......//Grashoff No
Ra1=(t/(Do*Di)^4)*((Gr1*Pr)/((Di)^(-7/5)+(Do)^(-7/5))^5);...........//Grashof number
Keff1=K*0.744*(Pr/(0.861+Pr))^(1/4)*(Ra1*10)^(1/4);........//Effective thermal conductivity of atm in W/mK
Q1=Keff1*((%pi*Di*Do)/t)*((Tw)-Ta);.........//Heat transfer rate at atmospheric pressure in W
disp(Q1,"Heat transfer rate at atmospheric pressure in W:")
disp("Higher the air pressure between concentric spheres, higher is the heat transfer rate")
