clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 9.1   Page 569 \n'); //Example 9.1
// Boundary Layer thickness at trailing edge.

//Operating Conditions
Ts = 70+273;    //[K] Surface Temperature
Tsurr = 25+273;    //[K] Surrounding Temperature
v1 = 0;            //[m/s] Velocity of free air
v2 = 5;            //[m/s] Velocity of free air
L = .25;            //[m] length

//Table A.4 Air Properties T = 320 K
uv = 17.95*10^-6;         //[m^2/s] Kinematic Viscosity
be = 3.12*10^-3;          //[K^-1]  Tf^-1
Pr = 269;               // Prandtl number 
g = 9.81;        //[m^2/s]gravitational constt

Gr = g*be*(Ts-Tsurr)*L^3/uv^2;
del = 6*L/(Gr/4)^.25;
printf("\n Boundary Layer thickness at trailing edge for no air stream %.3f m",del);

Re = v2*L/uv;
printf("\n\n For air stream at 5 m/s As the Reynolds Number is %.2e the free convection boundary layer is Laminar",Re);
del2 = 5*L/(Re)^.5;
printf("\n Boundary Layer thickness at trailing edge for air stream at 5 m/s is %.4f m",del2);
//END