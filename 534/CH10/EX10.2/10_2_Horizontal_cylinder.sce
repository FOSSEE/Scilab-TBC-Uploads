clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 10.2   Page 635 \n'); //Example 10.2
// Power Dissipation per unith length for the cylinder, qs

//Operating Conditions
Ts = 255+273    ;//[K] Surface Temperature
Tsat = 100+273    ;//[K] Saturated Temperature
D = 6*10^-3            ;//[m] Diameter of pan
e = 1            ;// eimssivity
stfncnstt=5.67*10^(-8)    ;// [W/m^2.K^4] - Stefan Boltzmann Constant 
g = 9.81          ;//[m^2/s] gravitaional constant
//Table A.6 Saturated water Liquid Properties T = 373 K
rhol = 957.9            ;//[kg/m^3] Density
hfg = 2257*10^3        ;//[J/kg] Specific Heat
//Table A.4 Water Vapor Properties T = 450 K
rhov = .4902            ;//[kg/m^3] Density
cpv = 1.98*10^3              ;//[J/kg.K] Specific Heat
kv = 0.0299                ;//[W/m.K] Conductivity
uv = 15.25*10^-6            ;//[N.s/m^2] Viscosity

Te = Ts-Tsat;

hconv = .62*[kv^3*rhov*(rhol-rhov)*g*(hfg+.8*cpv*Te)/(uv*D*Te)]^.25;
hrad = e*stfncnstt*(Ts^4-Tsat^4)/(Ts-Tsat);

//From eqn 10.9 h^(4/3) = hconv^(4/3) + hrad*h^(1/3)
//Newton Raphson
h=250;        //Initial Assumption
while(1>0)
f = h^(4/3) - [hconv^(4/3) + hrad*h^(1/3)];
fd = (4/3)*h^(1/3) - [(1/3)*hrad*h^(-2/3)];
hn=h-f/fd;
if((hn^(4/3) - [hconv^(4/3) + hrad*hn^(1/3)])<=.01)
    break;
end;
h=hn;
end

q = h*%pi*D*Te;

printf("\n Power Dissipation per unith length for the cylinder, qs= %i W/m",q);
//END