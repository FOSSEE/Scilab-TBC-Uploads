clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 10.1   Page 632 \n'); //Example 10.1
// Power Required by electruc heater to cause boiling
// Rate of water evaporation due to boiling
// Critical Heat flux corresponding to the burnout point

//Operating Conditions
Ts = 118+273    ;//[K] Surface Temperature
Tsat = 100+273    ;//[K] Saturated Temperature
D = .3            ;//[m] Diameter of pan
g = 9.81          ;//[m^2/s] gravitaional constant
//Table A.6 Saturated water Liquid Properties T = 373 K
rhol = 957.9            ;//[kg/m^3] Density
cp = 4.217*10^3             ;//[J/kg] Specific Heat
u = 279*10^-6            ;//[N.s/m^2] Viscosity
Pr = 1.76                ;// Prandtl Number
hfg = 2257*10^3        ;//[J/kg] Specific Heat
si = 58.9*10^-3     ;//[N/m]
//Table A.6 Saturated water Vapor Properties T = 373 K
rhov = .5956            ;//[kg/m^3] Density

Te = Ts-Tsat;
//From Table 10.1
C = .0128;
n = 1;
q = u*hfg*[g*(rhol-rhov)/si]^.5*(cp*Te/(C*hfg*Pr^n))^3;
qs = q*%pi*D^2/4;

m = qs/hfg;

qmax = .149*hfg*rhov*[si*g*(rhol-rhov)/rhov^2]^.25;

printf("\n Boiling Heat transfer rate = %.1f kW \n Rate of water evaporation due to boiling = %i kg/h \n Critical Heat flux corresponding to the burnout point = %.2f MW/m^2",qs/1000,m*3600,qmax/10^6);
//END