clc;funcprot(0);//EXAMPLE 16.5
// Initialisation of Variables
t1=298;.................//Temperature of the air while entering the compressor in Kelvin
qrej=1210;..............//Amount of heat rejected in cooler in kJ/min
t2=273+65;...............//Temperature of the air leaving the cooler in Kelvin
p2=1.75;.................//Pressure of the air leaving the cooler in bar
n=6;.....................//No of cylinders
d=0.1;...................//Bore of the cylinder in m
l=0.11;...................//Stroke of the cylinder in m
etaV=0.72;................//volumetric efficiency
N=2000;...............//Engine rpm
Tout=150;..................//Torque Output in Nm
etaM=0.8;..................//Mechanical efficiency
R=287;.......................//Gas constant for air in J/kgK
cp=1.005;...................//Specific capacity of air
//calculations
BP=(2*%pi*N*Tout)/(60*1000);...........//Brake power in kW
IP=BP/etaM;..........//Input Power in kW
Vc=(%pi/4)*d*d*l;...................//Cylinder Volume in m^3
pmi=(6*IP)/(n*Vc*(N/2)*10);................//Indicated mean effective pressure
disp(pmi,"The indicated mean effective pressure (in bar):")
Vs=Vc*6*(N/2);.........................//Engine Swept Volume in m^3/min
Vaa=Vs*etaV;..........................//Aspirated volume of air into engine in m^3/min
maa=(p2*10^5*Vaa)/(R*t2);..............//Aspirated air mass flow into the engine in kg/min
disp(maa,"The total aspirated air mass flow into the engine (in kg/min):")
t2a=((((BP/cp)/(qrej/(60*cp)))*t2)-t1)/(((BP/cp)/(qrej/(60*cp)))-1);
mc=((BP/cp)/(t2a-t1))*60;........................//Air flow into the compressor in kg/min
disp(mc,"Air flow into the compressor in kg/min:")


