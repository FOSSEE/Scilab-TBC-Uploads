clc;funcprot(0);//EXAMPLE 20.41
// Initialisation of Variables
m=16.5;.......//Air flow in kg/s
rp=4;........//Pressure ratio
N=15000;.........//Compressor rpm
t01=293;.........//Inlet head temperature
fis=0.9;...........//Slip factor
fiw=1.04;.........//Power input factor
etaisen=0.8;.......//Isentropic efficiency
cp=1.005;........//Specific heat at constant pressure in kJ/kgK
ga=1.4;......//Ratio of specific heats
//Calculations
t021=t01*(rp^((ga-1)/ga));
delt=(t021-t01)/etaisen;Cbl2=sqrt((1000*cp*delt)/(fiw*fis));
D=(60*Cbl2)/(%pi*N);..............//Diameter of impeller
disp(D,"Diameter of the impeller in m:")
P=m*cp*delt;
disp(P,"Power input to compressor in kW:")
