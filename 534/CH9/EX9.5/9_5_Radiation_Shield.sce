clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 9.5   Page 592 \n'); //Example 9.5
// Heat Loss from pipe per unit of length
// Heat Loss if air is filled with glass-fiber blanket insulation

//Operating Conditions
To = 35+273    ;//[K] Shield Temperature
Ti = 120+273    ;//[K] Tube Temperature
Di = .1            ;//[m] Diameter inner
Do = .12            ;//[m] Diameter outer
L = .01            ;//[m] air gap insulation

//Table A.4 Air Properties T = 350 K
k = 30*10^-3            ;//[W/m.K] Conductivity
uv = 20.92*10^-6         ;//[m^2/s] Kinematic Viscosity
al = 29.9*10^-6        ;//[m^2/s] alpha
be = 2.85*10^-3          ;//[K^-1]  Tf^-1
Pr = .7               ;// Prandtl number 
g = 9.81                ;//[m^2/s] gravitational constt
//Table A.3 Insulation glass fiber T=300K
kins = .038               ;//[W/m.K] Conductivity

Lc = 2*[2.303*log10(Do/Di)]^(4/3)/((Di/2)^-(3/5)+(Do/2)^-(3/5))^(5/3);
Ra = g*be*(Ti-To)/al*Lc^3/uv;    
keff = .386*k*(Pr/(.861+Pr))^.25*Ra^.25;
q = 2*%pi*keff*(Ti-To)/(2.303*log10(Do/Di));

//From equatiom 9.58 and 3.27
qin = q*kins/keff;

printf("\n Heat Loss from pipe per unit of length is %i W/m \n Heat Loss if air is filled with glass-fiber blanket insulation %i W/m",q,qin);
//END