
clc
// Environment
T0 = 298.15 // Environment temperature in K
P0 = 1 // Atmospheric pressure in atm
R = 8.3143// Gas constant
xn2 = 0.7567  // mole fraction of nitrogen
xo2 = 0.2035 // mole fraction of oxygen
xh2o = 0.0312 // mole fraction of water
xco2 = 0.0003// mole fraction of carbon dioxide
xother = 0.0083 // Mole fraction of other gases
// Liquid octane
t1 = 25 // Temperature of liquid octane in degree centigrade
m = 0.57 // Mass flow rate in kg/h
T2 = 670 // Temperature of combustion product at exit in K
x1 = 0.114 // Mole fraction of CO2
x2 = .029 // Mole fraction of CO
x3 = .016 // Mole fraction of O2
x4 = .841 // Mole fraction of N2
Wcv = 1 // Power developed by the engine in kW
printf("\n Example 6.13\n")
// By carbon balance 
b = 55.9 
// By hydrogen balance
c=9
// By oxygen balance
a = 12.58
Qcv = Wcv- 3845872*(.57/(3600*114.22))
E = 5407843 // Chemical exergy of C8H18
nII = Wcv/(E*.57/(3600*114.22))
printf("\n The rate of heat transfer from the engine = %f kW,\n The second law of efficiency of the engine = %f percent",Qcv,nII*100)


