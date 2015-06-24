clc;funcprot(0);//Example 5.2
//Initilisation of Variables
Tw=20;....//Temparature of plate in degrees celcius
Ta=40;....//Temparature of water in degrees celcius
U=0.4;....//Velocity of flat plate in m/s
R=287;...//
L=1;......//Length of flat plate in m
w=0.5;...//Width of flat plate in m
x=0.4;...//Reaquire heat transfer coefficient at this distance in m
x0=0.3;...//Heat starts at this distance in m
d=997.5;....//Density of water in kg/m^3
v=0.8315*10^-6;...//Velocity of water in m^2/s
K=612.9*10^-3;...//Thermal conductivity of water in W/m*K
Pr=5.68;...//  
//calculation
Tf=(Ta+Tw)/2;....//Filim temparature in degrees celcius
Re=(U*x)/v;....//Reynolds number
Nux=0.332*(Re)^0.5*(Pr)^0.333*[1-(x0/x)^0.75]^-0.333;....//Nusselt number at location
h=(Nux*K)/x;.....//Local heat transfer coefficient at a dist of 0.4 m in W/m^2 K
disp(h,"Local heat transfer coefficient at a dist of 0.4 m in W/m^2 K:")
