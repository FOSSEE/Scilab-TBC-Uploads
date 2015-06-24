clc;funcprot(0);//EXAMPLE 20.38
// Initialisation of Variables
ma=528;.............//Air flow in kg/min
m=ma/60;.............//Air flow in kg/s
p1=1;........//Inlet pressure in bar
t1=293;............//Inlet temperature in bar
N=20000;..............//Compressor rpm
etaisen=0.8;.........//Isentropic efficiency
po1=1;.........//Static pressure in bar
p02=4;...........//Final total pressure in bar
C1=145;.........//Velocity of air when entering the impeller in m/s
rwt=0.9;..........//Ratio of whirl speed to tip speed 
dh=0.12;........//Hub diameter in m
cp=1.005;...........//Specific heat at constant pressure in kJ/kgK
ga=1.4;............//Ratio of specific heats
R=287;..............//Gas constant for air in kJ/kgK
//Calculations
t01=t1+((C1*C1)/(2*cp*1000));..........//Stagnation temperature at the inlet to the machine in K
p01=p1*((t01/t1)^(ga/(ga-1)));.....//Stagnation pressure at the inlet to the machine in bar
t021=t01*((p02/p01)^((ga-1)/ga));
deltisen=t021-t01;.........//Isentropic rise in temperature in K
delt=round(deltisen/etaisen);........//Actual rise in temperature 
disp(delt,"Actual rise in temperature:")
wc=cp*delt;.........//Work consumed by compressor in kJ/kg
Cbl2=sqrt(wc*1000/rwt);
d2=Cbl2*60/(%pi*N);..........//Tip diameter of the impeller in m
disp(d2*100,"Tip diameter of the impeller in cm:")
P=m*wc;............//Power required in kW
disp(P,"Power required in kW:")
rho1=(p1*10^5)/(R*t1);.......//Density at entry in kg/m^3
d1=sqrt(((m*4)/(C1*rho1*%pi))+(dh^2));.......//Eye diameter in m
disp(d1*100,"Diameter of the eye in cm:")
