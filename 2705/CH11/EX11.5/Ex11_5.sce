clear;
clc;
disp('Example 11.5');

//  aim : To determine
// (a) the intermediate pressure
// (b) the indicated power output
// (c) the steam consumption of the engine

// given values
P1 = 1400;// initial pressure, [kN/m^2]
x = .9;// dryness fraction
P5 = 35;// exhaust pressure
k = .8;// diagram factor of low-pressure cylindaer
L = 350*10^-3;// stroke of both the cylinder, [m]
dhp = 200*10^-3;// diameter of high pressure cylinder, [m]
dlp = 300*10^-3;// diameter of low-pressure cylinder, [m]
N = 300;// engine speed, [rev/min]

// solution
// taking reference Fig.11.13
Ahp = %pi/4*dhp^2;// area of high-pressure cylinder, [m^2]
Alp = %pi/4*dlp^2;// area of low-pressure cylinder, [m^2]
// for equal initial piston loads
// (P1-P7)Ahp=(P7-P5)Alp
deff('[x]=f(P7)','x=(P1-P7)*Ahp-(P7-P5)*Alp');
P7 = fsolve(0,f);// intermediate pressure, [kN/m^2]
mprintf('\n (a) The intermediate pressure is  =  %f kN/m^2\n ',P7);

// (b)
V6 = Ahp*L;// volume of high-pressure cylinder, [m^3]
P2 = P1;
P6 = P7;
// using P2*V2=P6*V6
V2 = P6*V6/P2; // [m^3]
V1 = Alp*L;// volume of low-pressure cylinder, [m^3]
R = V1/V2;// expansion ratio
Pm = P1/R*(1+log(R))-P5;// effective pressure of low-pressure cylinder, [kn/m^2]
Pm = k*Pm;// actual effective pressure, [kN/m^2]
ip = Pm*L*Alp*N*2/60;// indicated power, [kW]
mprintf('\n (b) The indicated power is  =  %f kW\n',ip);

// (c) 
COV = V1/ R;// cut-off  volume in high-pressure cylinder, [m^3]
V = COV*N*2*60;// volume of steam admitted/h
// from steam table
vg = .1407;// [m^3/kg]
AV = x*vg;// specific volume of admission steam, [m^3/kg]
m = V/AV;// steam consumption, [kg/h]
mprintf('\n (c) The steam consumption of the engine is  =  %f  kg/h\n',m);

//  End 
