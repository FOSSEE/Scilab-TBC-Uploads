clc;funcprot(0);//EXAMPLE 12.4
// Initialisation of Variables
N=2000;............//Engine rpm
theta=30;...........//Crank Travel in degree
sfc=0.272;...........//Fuel consumption in kg/kWh
ip=120;................//Injection Pressure in bar
cp=30;.................//Combustion chamber Pressure in bar
Cd=0.9;...............//co-efficient of discharge of orifice
rhow=1000;...........//Density of water in kg/m^3
api = 32;..............//API in degree
pw=15;..................//Power Output in kW
//Calculation
spgr= 141.5/(131.5+api);............//Specific Gravity
fcpc = (sfc*pw)/((N/2)*60);..............//Fuel consumption per cycle in kg
tfic=(theta/360)*(60/N);....//Time for Fuel Injection per Cycle in sec
mf = fcpc/tfic;...............//Mass of fuel injected per cycle in kg/s
vf = Cd*sqrt((2*(ip-cp)*10^5)/(spgr*rhow));.............//Actual fuel velocity of injection in m/sec
d=sqrt((mf*4)/(%pi*vf*spgr*rhow))
disp(d*1000,"Diameter of orifice (mm) :")
