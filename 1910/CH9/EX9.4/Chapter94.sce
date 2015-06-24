// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 9, Example 4")
//Saturated freon-012 at Temprature(Tg)=35°C is condensed horizontal tube of diameter(D)=15mm or.015m at a lower vapour velocity.
//length,L=1m,Since per meter of tube is considered.
L=1;
Tg=35;
D=0.015;
//The tube wall is maintained at temprature(Tw)=25°C
Tw=25;
//For freon-12 at 35°C,enthalpy of vaporisation(hfg=131.33kJ/kg) and vapour density(rhov=42.68kg/m^3)
hfg=131.33*10^3;
rhov=42.68;
//tf is mean film temprature
disp("The mean film temprature in°C is")
tf=(Tg+Tw)/2
//The relevant properties at 30°C are density(rho=1.29*10^3kg/m^3),conductivity(k=0.071W/(mK)),viscosity(mu=2.50*10^-4kg/(m*s)),specific heat(cp=983J/(kg*°C))
rho=1.29*10^3;
k=0.071;
mu=2.50*10^-4;
cp=983;
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
//we found the modified enthalpy by using following equation hfgdash=hfg+(3/8)*cp*(Tg-Tw)
disp(" Modified enthalpy in J/kg is")
hfgdash=hfg+[(3/8)*cp*(Tg-Tw)]
//The average heat transfer coefficient over length L is hbar=0.555*[(rho*(rho-rhov)*g*hfgdash*k^3)/(mu*D*(Tg-Tw))]^(1/4)
disp("The average heat transfer coefficient over length L in W/(m^2*K)")
hbar=0.555*[(rho*(rho-rhov)*g*hfgdash*k^3)/(mu*D*(Tg-Tw))]^(1/4)
//The rate of condensation is given by mdotc=(hbar*(pi*D*L)*(Tg-Tw))/hfg
disp("The total rate of condensation in kg/hr")
mdotc=[(hbar*(%pi*D*L)*(Tg-Tw))/hfg]*3600























