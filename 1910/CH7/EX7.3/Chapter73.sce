// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 3")
//Air at a pressure of 101kPa and temprature,Tinf=20°C flows with a velocity(Uinf) of 5m/s over a flat plate whose temprature is kept constant at Tw=140°C.
Tw=140;
Tinf=20;
Uinf=5;
//The properties at the film temprature of 80°C are Prandtl number(Pr=0.706),Conductivity(k=0.03W/(m*°C)),kinematic viscosity(nu=2*10^-5m^2/s)
Pr=0.706;
k=0.03;
nu=2*10^-5;
//ReL is reynolds number and L is length of flat plate
disp("(a)When the air flows parallel to the long side we have L=5 and the Reynolds no. becomes")
L=5;
ReL=(Uinf*L)/nu
disp("which is greater than critical Reynolds number.")
//Thus we have combined laminar and tubulent flow.
// So The average heat transfer coefficient over L=5m is determined from hbarL=(k/L)*[0.037*(ReL)^(4/5)-871]*Pr^(1/3)
disp("The average heat transfer coefficient over L=5m in W/(m^2*K)")
hbarL=(k/L)*[0.037*(ReL)^(4/5)-871]*Pr^(1/3)
//The rate of heat transfer per unit width is Q=h*A*(Tinf-Tw)
//Since width is 1m so B=1
//Area(A)=L*B
B=1;
A=L*B;
//Q is the rate of heat transfer
disp("The rate of heat transfer per unit width in W is")
Q=hbarL*A*(Tw-Tinf)
//When the air flow is parallel to the 1m side we have L=1
disp("(b)When the air flow is parallel to the 1m side we have L=1 an the Reynolds no. becomes ")
L=1;
ReL=(Uinf*L)/nu
disp("which is less than critical Reynolds number.")
//Thus we have laminar flow
//Heat flux is given by h=(k/L)*0.664*ReL^0.5*Pr^(1/3)
disp("Heat flux in W/(m^2*K) is")
h=(k/L)*0.664*ReL^0.5*Pr^(1/3)
//The rate of heat transfer per unit width is Q=h*A*(Tinf-Tw)
//Now width is 5m so B=5
//Area(A)=L*B
B=5;
A=L*B;
//Q is the rate of heat transfer
disp("The rate of heat transfer per unit width in W is")
Q=h*A*(Tw-Tinf)



























