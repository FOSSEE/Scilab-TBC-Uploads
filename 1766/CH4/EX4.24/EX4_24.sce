clc;funcprot(0);......//Example 4.24
//Initialization of variables
U=2;.......//Velocity of air in kg/s
Ta=21;.............//Temperature of air in degrees celcius
L=0.03;.........//Length of board in m
H=0.02;..........//Height of the board in m
//properties of air at 21 d C
K=0.0251;.......//Thermal conductivity in W/mK
v=15.7*10^-6;.......//Viscosity in m^2/s
//Calculations
ReH=(U*H)/(v);........//Reynolds number
Nu=29;...........//Nusselt number 
hc=(K*Nu)/L;........//heat transfer co-efficient for 2nd integrated circuit in W/m^2 K
disp(hc,"heat transfer co-efficient for 2nd integrated circuit in W/m^2 K:")
