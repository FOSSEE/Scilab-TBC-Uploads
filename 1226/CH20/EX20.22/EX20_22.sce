clc;funcprot(0);//EXAMPLE 20.22
// Initialisation of Variables
m=4.5;.........//Amount of air compressed in kg/min
ps=1.013;.......//Suction pressure in bar
ts=288;.........//Suction temperature in K
rp=9;...........//Pressure ratio
n=1.3;.........//Compression index
k=0.05;........//Clearance ratio
N=300;.........//Compressor rpm
R=287;.........//Gas constant in J/kgK
ns=2;............//No of stages
//Calculations
ti=round(ts*((sqrt(rp))^((n-1)/n)));......//Intermediate temperature in K
W=round(ns*n*(1/(n-1))*m*(R/1000)*(ti-ts));..........//Work required per min in kJ
IP=W/60;.........//Indicated power in kW
disp(IP,"Indicated power in kW:")
mc=m/N;...........//Mass induced per cycle in kg
etav=(1+k)-(k*(sqrt(rp)^(1/n)));.......//Volumetric efficiency
Vs=(mc*R*ts)/(ps*10^5*etav);........//Swept volume for low pressure cylinder in m^3
disp(Vs,"Swept volume for low pressure cylinder in m^3:")
vdhp=(mc*ts*R)/(sqrt(rp)*ps*10^5);............//Volume of air drawn in high pressure cylinder per cycle in m^3
vshp=vdhp/etav;...............//Swept volume ofhigh pressure cylinder in m^3
disp(vshp,"Swept volume of high pressure cylinder in m^3:")

