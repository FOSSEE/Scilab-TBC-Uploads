clc;funcprot(0);//EXAMPLE 12.2
// Initialisation of Variables
n=6;...............//No of cylinders
N=1500;............//Engine rpm
BP=220;.............//Brake Power in kW
bsfc=0.273;..........//Brake Specific Fuel Consumption in kg/kWh
theta=30;.............//The Period of Injection in degrees of crank angle
spgr=0.85;............//Specific Gravity of fuel
Cf=0.9;................//Orifice discharge co-efficient
ip=160;...............//Injection pressure in bar
cp=40;.................//Pressure in combustion chamber in bar
rhow=1000;................//Density of water in kg/m^3
//Calculations
vf = Cf*sqrt((2*(ip-cp)*10^5)/(spgr*rhow));.............//Actual fuel velocity of injection in m/sec
qf=(bsfc*BP)/(spgr*rhow*3600);..................// Volume of fuel injected per sec in m^3
d=sqrt (qf/((%pi/4)*n*vf*(theta/360)*(60/N)*(N/120)));...........//Diameter of nozzle orifice
disp(d,"Diameter of Nozzle Orifice is (m):")


