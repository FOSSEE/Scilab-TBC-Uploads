clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 9.3   Page 577 \n'); //Example 9.3
// Heat Loss from duct per meter of length

//Operating Conditions
Ts = 45+273;    //[K] Surface Temperature
Tsurr = 15+273    ;//[K] Surrounding Temperature
H = .3            ;//[m] Height 
w = .75           ;//[m] Width

//Table A.4 Air Properties T = 303 K
k = 26.5*10^-3            ;//[W/m.K]
uv = 16.2*10^-6         ;//[m^2/s] Kinematic Viscosity
al = 22.9*10^-6        ;//[m^2/s] alpha
be = 3.3*10^-3          ;//[K^-1]  Tf^-1
Pr = .71               ;// Prandtl number 
g = 9.81                ;//[m^2/s] gravitational constt

Ra = g*be*(Ts-Tsurr)/al*H^3/uv;    //Length = Height
//From equatiom 9.27
Nu = [.68 + .67*Ra^.25/[1+(.492/Pr)^(9/16)]^(4/9)];
//for Sides
hs = Nu*k/H;

Ra2 = g*be*(Ts-Tsurr)/al*(w/2)^3/uv;       //Length = w/2
//For top eq 9.31
ht = [k/(w/2)]*.15*Ra2^.3334;
//For bottom Eq 9.32
hb = [k/(w/2)]*.27*Ra2^.25;

q = (2*hs*H+ht*w+hb*w)*(Ts-Tsurr);

printf("\n Rate of heat loss per unit length of duct is %i W/m",q);
//END