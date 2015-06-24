clc;funcprot(0);//EXAMPLE 12.5
// Initialisation of Variables
N=1800;............//Engine rpm
theta=32;...........//Crank Travel in degree
ip=118.2;................//Injection Pressure in bar
cp=31.38;.................//Combustion chamber Pressure in bar
Cd=0.9;...............//co-efficient of discharge of orifice
rhow=1000;...........//Density of water in kg/m^3
api = 32;..............//API in degree
pw=11;..................//Power Output in kW
d=0.47;...................//Fuel Injection orifice diameter in mm
//Calculation
spgr= 141.5/(131.5+api);............//Specific Gravity
tfic=(theta/360)*(60/N);....//Time for Fuel Injection per Cycle in sec
vf = Cd*sqrt((2*(ip-cp)*10^5)/(spgr*rhow));.............//Actual fuel velocity of injection in m/sec
mf=vf*spgr*rhow*(%pi/4)*(d/1000)^2;
tncp=(N/2)*60;...............//Total no of cycles per hour
FIPC=mf*tfic;.................//Mass of fuel injected per cycle in kg/cycle
fc=FIPC*tncp*(1/pw);...................//Fuel consumption in kg/kWh
disp(fc,"Fuel consumption in kg/kWh :")
