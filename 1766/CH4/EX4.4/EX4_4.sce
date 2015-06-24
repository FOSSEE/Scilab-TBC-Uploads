clc;funcprot(0);......//Example 4.4
//Initialization of variables
l=2;........//Vertical height of the plate in m
w=1;......//Width of the plate in m
Tw=60;....//Temperature of the plate in degree celsius
Ta=20;....//Temperature of air in degree celsius
v=0.657*10^-6;.......//Viscosity in m^2/s
K=0.628;.......//Thermal conductivity in W/mK
g=9.81;....//Gravitational constant
Pr=4.34;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
L=(l*w)/(2*(l+w));......//Charecteristic length in m
Gr=(g*B*(Tw-Ta)*L*L*L)/(v^2);.......//Grashoff No
Nu=0.14*(Gr*Pr)^(0.33);............//Nusselt no
h=(Nu*K)/L;.........//Heat transfer co-efficient in W/m^2 K
Q=h*l*w*(Tw-Ta);.........//Rate of heat transfer in W
disp(Q/1000,"(i)Rate of heat transfer in kW:")
//When the bottom is heated
Nu1=0.27*(Gr*Pr)^(1/4);......//Nusselt no when the bottom is heated
h1=(Nu1*K)/L;.........//Heat transfer co-efficient in W/m^2 K
Q1=h1*l*w*(Tw-Ta);.........//Rate of heat transfer in W
disp(Q1/1000,"(ii)Rate of heat transfer in kW when the bottom is heated:")
//The answer is wrong in the first case (In Textbook)since the Nusselt no was miscalculated in the textbook
