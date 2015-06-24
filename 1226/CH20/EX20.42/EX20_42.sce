clc;funcprot(0);//EXAMPLE 20.42
// Initialisation of Variables
rp=3.6;..........//Pressure ratio
die=0.35;.......//Diameter of inlet eye of compressor in m
Cf=140;..........//Axial velocity in m/s
m=12;.............//Mass flow in kg/s
Cbl2=120;.........//Velocity in the delivery duct in m/s
Ci=460;..........//The tip speed of the impeller in m/s
N=16000;............//Speed of impeller in rpm
etaisen=0.8;.......//Isentropic efficiency
pc=0.73;........//Pressure co efficient
pa=1.013;..........//Ambient pressure in bar
ta=273+15;................//Ambient temperature in K
ga=1.4;..........//Ratio of specific heats
cp=1.005;.........//Specific heat at constant pressure in kJ/kgK
R=0.287;........//Gas constant in kJ/kgK
//Calculations
delt=((ta*((rp^((ga-1)/ga))-1))/etaisen);.......//Rise in temperature
t02=ta+delt;............//Total head temperature in K
disp(t02,"Total head temperature in K:")
t2=t02-((Cbl2*Cbl2)/(2*cp*1000));..........//Static temperature at outlet in K
disp(t2,"Static temperature at outlet in K:")
p02=pa*rp;
p2=p02/(1+((Cbl2*Cbl2)/(2*R*t2*1000)));...........//Static pressure at exit in bar
disp(p2,"Static pressure at exit in bar:")
t1=ta-((Cf*Cf)/(2*cp*1000));.............//Static temperature at inlet in K
disp(t1,"Static temperature at inlet in K:")
p1=pa/(1+((Cf*Cf)/(2*R*t1*1000)));...........//Static pressure at inlet in bar
disp(p1,"Static pressure at inlet in bar:")
rp=p2/p1;.....//Static pressure ratio
disp(rp,"Static pressure ratio:")
W=cp*delt;...........//Work done on air in kJ/kg of air
disp(W,"Work done on air in kJ/kg:")
P=m*cp*delt;..........//Power required to drive the compressor in kW
disp(P,"Power required to drve the compressor in kW:")
