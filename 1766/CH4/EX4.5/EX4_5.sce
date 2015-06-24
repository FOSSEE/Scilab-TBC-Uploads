clc;funcprot(0);......//Example 4.5
//Initialization of variables
L1=2;........//height of the plate in m
Tw=210;....//Temperature of the plate in degree celsius
Ta=30;....//Temperature of air in degree celsius
v=25.45*10^-6;.......//Viscosity in m^2/s
K=33.4*10^-3;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.686;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
//vertical position
Grv=(g*B*(Tw-Ta)*L1*L1*L1)/(v^2);.......//Grashoff No
Nuv=0.13*(Grv*Pr)^(1/3);............//Nusselt no
h=(Nuv*K)/L1;.........//Heat transfer co-efficient in W/m^2 K
Qv=2*h*L1^2*(Tw-Ta);.........//Rate of heat transfer in W
disp(Qv/1000,"(i)Rate of heat transfer for verticle position in kW:")
//Horizontal position
L2=0.5;.......//Lengthof suare plate of horizantal position in m
A1=4*10^-3;.......//Area of top surface in m^2
Grh=(g*B*(Tw-Ta)*L2*L2*L2)/(v^2);.......//Grashoff No
Nuh=0.14*(Grh*Pr)^(1/3);............//Nusselt no for top surface
hh=(Nuh*K)/L2;.........//Heat transfer co-efficient for top surface in W/m^2 K
Qt=hh*A1*(Tw-Ta);.........//Rate of heat transfer at top surface in W
Nub=0.27*(Grh*Pr)^(1/4);............//Nusselt no for bottom surface
hb=(Nub*K)/L2;.........//Heat transfer co-efficient for bottom surface in W/m^2 K
Qb=1.84;.......//Rate of heat transfer at bottom surface in W
disp(Qt+Qb,"(ii)Rate of heat transfer for horizontal position in kW:")
