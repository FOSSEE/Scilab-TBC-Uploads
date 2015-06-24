clc;funcprot(0);//EXAMPLE 12.7
// Initialisation of Variables
n=6;...............//No of cylinders
afr=20;...........//Air fuel ratio
d = 0.1;...............//cylinder bore in mm
l=0.14;..............//Cylinder length in mm
etav=0.8;............//Volumetric Efficiency
pa=1;.................//Pressure at the beginning of the compression in bar
ta = 300;.............//Temperature at the beginning of the compression in Kelvin
theta = 20;...............//Crank travel in degree for injection
N = 1500;...................//engine rpm
rhof=960;.................//Fuel density in kg/m^3
cf=0.67;................//Co efficient of discharge for injector
pi=150;....................//injection pressure in bar
pc=40;....................//combustion pressure in bar
R=287;........................//gas constant for air in kJ/kg.K
//calculations
V=(%pi/4)*d^2*l*etav;......................//Volume of air supplied per cylinder per cycle in m^3
ma=(pa*10^5*V)/(R*ta);.....................//Mass of this air at suction conditions in kg/cycle
mf=ma/afr;............................//Mass of fuel in kg/cycle
fipc = (theta*60)/(360*N);...........//Time taken for fuel injection per cycle in seconds
MF = mf/fipc;........................//Mass of fuel injected into each cylinder per second
disp(MF,"The mass of fuel injected into each cylinder per second in kg/s :")
vf=cf*sqrt((2*(pi-pc)*10^5)/rhof);.............//fuel velocity injection in m/s
d0=sqrt((MF*4)/(%pi*vf*rhof));..................//diameter of fuel orifice in m
disp(d0*1000,"Diameter of the fuel orifice in mm :")
