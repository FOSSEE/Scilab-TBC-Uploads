clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 9.2   Page 572 \n'); //Example 9.2
// Heat transfer by convection between screen and room air.

//Operating Conditions
Ts = 232+273;    //[K] Surface Temperature
Tsurr = 23+273;    //[K] Surrounding Temperature
L = .71;            //[m] length
w = 1.02;           //[m] Width

//Table A.4 Air Properties T = 400 K
k = 33.8*10^-3            ;//[W/m.K]
uv = 26.4*10^-6         ;//[m^2/s] Kinematic Viscosity
al = 38.3*10^-6        ;//[m^2/s]
be = 2.5*10^-3          ;//[K^-1]  Tf^-1
Pr = .69               ;// Prandtl number 
g = 9.81                ;//[m^2/s] gravitational constt

Ra = g*be*(Ts-Tsurr)/al*L^3/uv;
printf("\n\n As the Rayleigh Number is %.2e the free convection boundary layer is turbulent",Ra);
//From equatiom 9.23
Nu = [.825 + .387*Ra^.16667/[1+(.492/Pr)^(9/16)]^(8/27)]^2;
h = Nu*k/L;
q = h*L*w*(Ts-Tsurr);

printf("\n Heat transfer by convection between screen and room air is %i W",q);
//END