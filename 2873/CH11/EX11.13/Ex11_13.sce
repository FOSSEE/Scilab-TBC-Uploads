// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 13")
r=0.6;//relative humidity
P=1.013;//total pressure of mixture in bar
R=0.287;//gas constant in KJ/kg K
Ta=(30+273);//room temperature in K
Cp=1.005;//specific heat at constant pressure in KJ/kg degree celcius
disp("at 30 degree celcius from steam table,saturation pressure,Pv_sat=0.0425 bar")
Pv_sat=0.0425;
disp("partial pressure of vapour(Pv)=relative humidity*Pv_sat in bar")
Pv=r*Pv_sat
disp("partial pressure of air(Pa)=total pressure of mixture-partial pressure of vapour")
Pa=P-Pv
disp("so partial pressure of air=0.9875 bar")
disp("humidity ratio,omega=0.622*Pv/(P-Pv)in kg/kg of dry air")
omega=0.622*Pv/(P-Pv)
disp("so humidity ratio=0.01606 kg/kg of air")
disp("Dew point temperature may be seen from the steam table.The saturation temperature corresponding to the partial pressure of vapour is 0.0255 bar.Dew point temperature can be approximated as 21.4oc by interpolation")
disp("so Dew point temperature=21.4 degree celcius")
disp("density of mixture(rho_m)=density of air(rho_a)+density of vapour(rho_v)")
disp("rho_m=(rho_a)+(rho_v)=rho_a*(1+omega)")
disp("rho_m=P*100*(1+omega)/(R*Ta)in kg/m^3")
rho_m=P*100*(1+omega)/(R*Ta)
disp("so density = 1.1835 kg/m^3")
disp("enthalpy of mixture,h=Cp*T+omega*(hg+1.860*(30-21.4))in KJ/kg of dry air")
T=30;//room temperature in degree celcius
hg=2540.1;//enthalpy at 30 degree celcius in KJ/kg
h=Cp*T+omega*(hg+1.860*(30-21.4))
disp("enthalpy of mixture =71.2 KJ/kg of dry air")
