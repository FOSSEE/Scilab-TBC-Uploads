clc;funcprot(0);//EXAMPLE 17.32
// Initialisation of Variables
n=1;...................//No of cylinders
d=0.032;................//Diameter of circular orifice in m
Cd=0.62;.............//Co efficient of discharge
hw=150;.................//Pressure across orfice in mm of water
t=20+273;..............//Temperature of air in the room in Kelvin
p=1.0132;.................//Ambient pressure in bar
pd=0.00178;............//Piston displacement in m^3
R=287;....................//Gas constant in J/kg
r=6.5;..................//Compression ratio
fc=0.135;................//Fuel consumption in kg/min
C=43900;.................//Calorific value of fuel in kJ/kg
BP=28;................//Brake power in kW
N=2500;...................//Engine rpm
k=0.5;....................//Four stroke engine
g=9.81;.......................//Acceleration due to gravity in m/s^2
rhow=1000;....................//Density of water in kg/m^3
ga=1.4;........................//Degree of freedom
//calculations
mbyv=(p*10^5)/(R*t);
pw=(hw/rhow)*rhow;....................//Pressure across orifice in kg/m^2
H=pw/mbyv;........................//Head of air column causing the flow in m
ma=Cd*(%pi/4)*d*d*sqrt(2*g*H);................//Air flow through orifice in m^3/s
maps=(ma*60)/(N/2);........................//Air consumption per stroke
etav=maps/pd;.................//Volumetric efficiency
disp(etav*100,"Volumetric efficiency (in %):")
ac=ma*60*mbyv;...............//Mass of air drawn into cylinder per min in kg
afr=ac/fc;...................//Air fuel ratio
disp(afr,"Air fuel ratio:")
pmb=(6*BP)/(n*pd*N*k*10);...................//Mean effective pressure in bar
disp(pmb,"Mean effective pressure (in bar):")
etast=1-(1/(r^(ga-1)));...............//Air standard efficiency
etabth=BP/((fc/60)*C);...............//Brake thermal efficiency
etarel=etabth/etast;.................//Relative efficiency
disp(etarel*100,"Relative efficiency (in %):")
