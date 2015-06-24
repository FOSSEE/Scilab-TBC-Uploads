clc;funcprot(0);//EXAMPLE 12.3
// Initialisation of Variables
n=1;............//No of cylinders
N=650;............//Engine rpm
theta=28;...........//Crank Travel in degree
fc=2.2;...........//Fuel consumption in kg/h
spgr=0.875;............//Specific Gravity
ip=150;................//Injection Pressure in bar
cp=32;.................//Combustion chamber Pressure in bar
Cd=0.88;...............//co-efficient of discharge of orifice
rhow=1000;...........//Density of water in kg/m^3
//Calculation
fcpc = fc/60;..............//Fuel consumption per cylinder
fipc = fcpc/(N/2);.........//Fuel Injected per cycle in kg
vfpc = fipc/(spgr*rhow);....//volume of fuel injected per cycle
disp(vfpc*10^6,"Volume of Fuel Injected per Cycle (cm^3):")
tfic=(theta/360)*(60/N);....//Time for Fuel Injection per Cycle in sec
mf = fipc/tfic;...............//Mass of fuel injected per cycle in kg/s
vf = Cd*sqrt((2*(ip-cp)*10^5)/(spgr*rhow));.............//Actual fuel velocity of injection in m/sec
d=sqrt((mf*4)/(%pi*vf*spgr*rhow))
disp(d*1000,"Diameter of orifice (mm) :")

