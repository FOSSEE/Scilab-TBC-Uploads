// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 12, Example 2")
//The temprature of atmospheric air (T)=40°C which flows over a wet bulb thermometer.
//The reading of wet bulb thermometer which is called the wet bulb temprature is (Tw)=20°C
T=40;
Tw=20;
//Tf is the film temprature
disp("The film temprature is given by Tf=(T+Tw)/2 in °C ")
Tf=(T+Tw)/2
Tinf=T;//surrounding temprature
//The properties of air at film temprature are density(rho=1.13kg/m^3),specific heat(cp=1.007kJ/(kg*K)),Thermal diffusivity(alpha=0.241*10^-4m^2/s)
//The diffusivity Dab=0.26*10^-4 m^2/s
//The enthalpy of vaporisation of water at 20°C is hfg=2407kJ/kg or 2407*10^3 J/kg
//The partial pressure of water vapour is the saturation pressure corresponding to 20°C so from steam table Ps=2.34kPa or 2.34*10^3 Pa.
rho=1.13;
cp=1.007*10^3;
alpha=0.241*10^-4;
Dab=0.26*10^-4;
hfg=2407*10^3;
Ps=2.34*10^3;
//The temprature at bulb surface Ts=20°C or 293K
Ts=Tw+273;//in kelvin
R=8.31*10^3;//gas constant
//The molecular weight of water is M=18
M=18;
//The density of water at bulb surface is rhos
disp("The density of water at bulb surface is given by rhos=(Ps*M)/(R*Ts) in kg/m^3") 
rhos=(Ps*M)/(R*Ts)
//Let X=hheat/hmass=rho*cp*(alpha/Dab)^(2/3).
X=rho*cp*(alpha/Dab)^(2/3);
//At steady atate (Rate of heat transfer from air to wet cover of thermometer bulb)=(Heat removed by evaporation of water from the wet cover of thermometer bulb)
//hheat*(Tinf-Ts)=hmass*(rhos-rhoinf)*hfg
//Rearranging above we get rhoinf=rhos-(hheat/hmass)*((Tinf-Ts)/hfg)
//The concentration of water vapour at free stream is rhoinf
disp("The concentration of water vapour at free stream is rhoinf=rhos-(hheat/hmass)*((Tinf-Ts)/hfg) in kg/m^3")
rhoinf=rhos-((X)*((Tinf-Tw)/hfg))
//The mass concentration of saturated water vapour(rhosteam) at 40°C(as found from steam table) is .051 kg/m^3
rhosteam=.051;
//The relative humidity is (rehu)
disp("The relative humidity is given by rehu=(rhoinf/rhosteam)*100 in percentage")
rehu=(rhoinf/rhosteam)*100







