clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 10.4   Page 652 \n'); //Example 10.4
// Condensation rate per unit length of tubes

//Operating Conditions
Ts = 25+273    ;//[K] Surface Temperature
Tsat = 54+273    ;//[K] Saturated Temperature
D = .006          ;  //[m] Diameter of pan
g = 9.81          ;//[m^2/s] gravitaional constant
N = 20                // No of tubes

//Table A.6 Saturated Vapor Properties p = 1.015 bar
rhov = .098            ;//[kg/m^3] Density
hfg = 2373*10^3        ;//[J/kg] Specific Heat
//Table A.6 Saturated water Liquid Properties Tf = 312.5 K
rhol = 992            ;//[kg/m^3] Density
cpl = 4178              ;//[J/kg.K] Specific Heat
kl = 0.631               ; //[W/m.K] Conductivity
ul = 663*10^-6           ; //[N.s/m^2] Viscosity

Ja = cpl*(Tsat-Ts)/hfg;
hfg2 = hfg*(1+.68*Ja);
//Equation 10.46
h = .729*[g*rhol*(rhol-rhov)*kl^3*hfg2/(N*ul*(Tsat-Ts)*D)]^.25;
//Equation 10.34
m1 = h*(%pi*D)*(Tsat-Ts)/hfg2;

m = N^2*m1;

printf("\n For the complete array of tubes, the condensation per unit length is %.3f kg/s.m",m);
//END