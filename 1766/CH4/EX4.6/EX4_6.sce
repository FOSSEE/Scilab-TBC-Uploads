clc;funcprot(0);......//Example 4.6
//Initialization of variables
Do=0.2;.........//Outer diameter of the pipe in m
L=3;...........//Length of the pipe in m
Tw=100;........//Saturated steam in degrees celcius
Ta=30;.............//Temperatyre of surrounding air in degrees celcius
v=20.76*10^-6;.......//Viscosity in m^2/s
K=0.03;.......//Thermal conductivity in W/mK
g=9.8;....//Gravitational constant
Pr=0.697;......//Prandlt no
//Calculations
Tf=(Tw+Ta)/2;.........//Film temperature in K
B=1/(Tf+273);........//Temp inverse in K^-1
//vertical position
Grv=(g*B*(Tw-Ta)*L*L*L)/(v^2);.......//Grashoff No
Nuv=0.13*(Grv*Pr)^(1/3);............//Nusselt no
h=(Nuv*K)/L;.........//Heat transfer co-efficient in W/m^2 K
Qv=h*(%pi*Do*L)*(Tw-Ta);.........//Rate of heat transfer in W
disp(Qv,"(i)Rate of heat transfer for verticle position in W:")
//Horizontal position
Grh=(g*B*(Tw-Ta)*Do*Do*Do)/(v^2);.......//Grashoff No
Nuh=0.13*(Grh*Pr)^(0.333);............//Nusselt no 
hh=(Nuh*K)/Do;.........//Heat transfer co-efficient in W/m^2 K
Qh=hh*(%pi*Do*L)*(Tw-Ta);.........//Rate of heat transfer in W
disp(Qh,"(ii)Rate of heat transfer for horizontal position in W:")
//The Answer arraived in textbook is found to be wrong when calculated
