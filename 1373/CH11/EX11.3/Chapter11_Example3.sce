//Chapter-11, Example 11.3, Page 481
//=============================================================================
clc
clear

//INPUT DATA
D=0.0016;//Diameter of the wire in m
T=255;//Temperature difference in degree C
p1=957.9;//Density of liquid in kg/m^3
Cpl=4640;//Specific heat in J/kg.K
u=(18.6*10^-6);//Dynamic viscosity in N.s/m^2
hjg=2257;//Enthalpy in kJ/kg
k=(58.3*10^-3);//Thermal conductivity in W/m.K
pv=31.54;//Density of vapour in kg/m^3
Ts=628;//Surface temperature in K
Tsat=373;//Saturation temperature in K

//CALCULATIONS
hc=(0.62*((k^3*pv*(p1-pv)*9.81*((hjg*1000)+(0.4*Cpl*T)))/(u*D*T))^0.25);//Convective heat transfer coefficient in W/m^2.K
hr=((5.67*10^-8)*(Ts^4-Tsat^4))/(Ts-Tsat);//Radiative heat transfer coefficient in W/m^2.K
hm=(hc+(0.75*hr));//Mean heat transfer coefficient in W/m^2.K
Q=(hm*3.14*D*T)/1000;//Power dissipation rate per unit length of the heater in kW/m

//OUTPUT
mprintf('Mean heat transfer coefficient is %3.1f W/m^2.K \nPower dissipation rate per unit length of the heater is %3.3f kW/m',hm,Q)

//=================================END OF PROGRAM==============================
