clear;
clc;
disp('Example 11.6');

// aim : To determine
// (a) the indicated power output
// (b) the diameter of high-pressure cylinder of the engine
// (c) the intermediate pressure

// given values
P = 1100;// initial pressure, [kN/m^2]
Pb = 28;// exhaust pressure
k = .82;// diagram factor of low-pressure cylindaer
L = 600*10^-3;// stroke of both the cylinder, [m]
dlp = 600*10^-3;// diameter of low-pressure cylinder, [m]
N = 4;// engine speed, [rev/s]
R = 8;// expansion ratio

// solution
// taking reference Fig.11.13
// (a)
Pm = P/R*(1+log(R))-Pb;// effective pressure of low-pressure cylinder, [kn/m^2]
Pm = k*Pm;// actual effective pressure, [kN/m^2]
Alp = %pi/4*dlp^2;// area of low-pressure cylinder, [m^2]
ip = Pm*L*Alp*N*2;// indicated power, [kW]
mprintf('\n (a) The indicated power is  =  %f kW\n',ip);

// (b)
// work done by both cylinder is same as area of diagram
w = Pm*Alp*L;// [kJ]
W = w/2;// work done/cylinder, [kJ]
V2 = Alp*L/8;// volume, [m63]
P2 = P;// [kN/m^2]
//  using area A1267=P2*V2*log(V6/V2)=W
V6 = V2*exp(W/(P2*V2));// intermediate volume, [m^3]
// using Ahp*L=%pi/4*dhp^2*L=V6
dhp = sqrt(V6*4/L/%pi);// diameter of high-pressure cylinder, [m]
mprintf('\n (b) The diameter of high-pressure cylinder is  =  %f  mm\n',dhp*1000);

// (c)
// using P2*V2=P6*V6
P6 = P2*V2/V6; // intermediate pressure, [kN/m^2]
mprintf('\n (c) The intermediate opressure is =   %f  kN/m^2\n',P6);

//  End 
