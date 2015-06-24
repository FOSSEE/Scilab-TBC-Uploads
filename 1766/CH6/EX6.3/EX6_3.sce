clc;funcprot(0);//Example 6.3
//Initilisation of Variables
d=0.002;...//diameter of brass wire in m
Tw=750;......//Uniform temparature in degrees celcius
E=0.8;....//emmissivity of solid surface
Ts=Tw-650;....//Surface temparature in degrees celcius
Tf=(Tw+Ts)/2;....//temparature of water vapour
Cpv=2085;....//specific heat of vapour in J/kg K
Mv=24.26*10^-6;......//viscosity of vapour in kg/(m-s)
Kv=0.0505;...//Thermal conductivity of vapour in W/m*K
Pv=0.314;....//density of saturated vapour in kg/m^3
hfg=2257*10^3;....//latent heat of vapouraisation in J/kg
g=9.81;......//accelaration due to gravity in m/s^2
Pl=960.6;.....//density of saturated liquid in kg/m^3
row=5.67*10^-8;....//surface tension for liquid vapour interferance in N/m
Tw1=Tw+273;....//Uniform temparature of radiation  in degrees celcius
Ts1=Ts+273;....//Surface temparature of radiation in degrees celcius
//calculations
hc=0.62*[(Kv^3*Pv*(Pl-Pv)*g*[hfg+0.4*Cpv*(Tw-Ts)])/(d*Mv*(Tw-Ts))]^0.25;....//Boiling heat transfer coefficient in W/m^2 K
hr=(row*E*(Tw1^4-Ts1^4))/(Tw1-Ts1);....//Radiant heat transfer coefficient in W/m^2 K
ht=hc+(0.75*hr);....//Total heat transfer coefficent in W/m^2 K
q=(ht*(Tw-Ts))/1000;.....//Heat flux in kW/m^2
disp(hc,"(i)Radiant heat transfer coefficient in W/m^2 K:")
disp(hr,"(ii)Total heat transfer coefficent in W/m^2 K:")
disp(q,"(iii)Heat flux in kW/m^2:")
