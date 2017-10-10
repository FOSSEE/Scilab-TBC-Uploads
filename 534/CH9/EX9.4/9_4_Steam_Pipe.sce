clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 9.4   Page 580 \n'); //Example 9.4
// Heat Loss from pipe per meter of length

//Operating Conditions
Ts = 165+273;    //[K] Surface Temperature
Tsurr = 23+273;    //[K] Surrounding Temperature
D = .1            ;//[m] Diameter
e = .85          ;// emissivity
stfncnstt=5.67*10^(-8)    ;// [W/m^2.K^4] - Stefan Boltzmann Constant 

//Table A.4 Air Properties T = 303 K
k = 31.3*10^-3            ;//[W/m.K] Conductivity
uv = 22.8*10^-6         ;//[m^2/s] Kinematic Viscosity
al = 32.8*10^-6        ;//[m^2/s] alpha
be = 2.725*10^-3          ;//[K^-1]  Tf^-1
Pr = .697               ;// Prandtl number 
g = 9.81                ;//[m^2/s] gravitational constt

Ra = g*be*(Ts-Tsurr)/al*D^3/uv;    
//From equatiom 9.34
Nu = [.60 + .387*Ra^(1/6)/[1+(.559/Pr)^(9/16)]^(8/27)]^2;
h = Nu*k/D;

qconv = h*%pi*D*(Ts-Tsurr);
qrad = e*%pi*D*stfncnstt*(Ts^4-Tsurr^4);

printf("\n Rate of heat loss per unit length of pipe is %i W/m",qconv+qrad);
//END