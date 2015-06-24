//Chapter-11, Example 11.6, Page 489
//=============================================================================
clc
clear

//INPUT DATA
p=2.45;//Pressure of dry saturated steam in bar
h=1;//Height of vertical tube in m
Ts=117;//Tube surface temperature in degree C
d=0.2;//Distance from upper end of the tube in m

//CALCULATIONS
Tsat=127;//Saturation temperature of water in degree C
p1=941.6;//Density of liquid in kg/m^3
k1=0.687;//Thermal conductivity in W/m.K
u=(227*10^-6);//Dynamic viscosity in N.s/m^2
hfg=2183;//Enthalpy in kJ/kg
pv=1.368;//Density of vapour in kg/m^3
q=(((4*k1*u*10*d)/(9.81*p1*(p1-pv)*hfg*1000))^0.25)*1000;//Thickness of condensate film in mm
h=(k1/(q/1000));//Local heat transfer coefficient at x=0.2 in W/m^2.K

//OUTPUT
mprintf('Thickness of condensate film is %3.2f mm\nLocal heat transfer coefficient at x=0.2 is %3.0f W/m^2.K',q,h)

//=================================END OF PROGRAM==============================
