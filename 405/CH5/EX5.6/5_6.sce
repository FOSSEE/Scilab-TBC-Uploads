clear;
clc;
printf("\t\t\tExample Number 5.6\n\n\n");
// plate with unheated starting length
// illustration5.6
// solution

u = 20;// [m/s] air velocity
l = 0.2;// [m] plate length as well as width (square)
p = 101325;// [Pa] air pressure 
Ta = 300;// [K] temperature of airstream
Tw = 350;// [K] temperature of last half of plate 
// First we evaluate the air properties at the film temperature 
Tf = (Tw+Ta)/2;// [K]
// and obtain
v = 18.23*10^(-6);// [square meter/s] kinematic viscosity
k = 0.02814;// [W/m degree celsius] heat transfer coefficient
Pr = 0.7;// prandtl number
// at the trailing edge of the plate the reynolds number is 
Re_l = l*u/v;// reynolds number
// or laminar flow over the length of the plate
// heating does not start until the last half of the plate, or at position xo = 0.1m. 
xo = 0.1;// [m]
// the local heat transfer coefficient is given by equation (5-41)
// hx = 0.332*k*Pr^(1/3)*(u/v)^(1/2)*x^(-1/2)*[1-(xo/x)^(0.75)]^(-1/3);
// the plate is 0.2 m wide so the heat transfer is obtained by integrating over the heated length xo<x<l
q = l*(Tw-Ta)*integrate('(0.332*k*Pr^(1/3)*(u/v)^(1/2)*x^(-1/2)*[1-(xo/x)^(0.75)]^(-1/3))','x',xo,l);
printf("the heat lost by the plate is %f W",q);
// the average value of the heat transfer coefficient over the heated length is given by 
h = q*(Tw-Ta)*(l-xo)*l;// [W/square meter degree celsius]
printf("\n\n the average value of heat transfer coefficient over the heated length is given by %f W/square meter degree celsius",h);

