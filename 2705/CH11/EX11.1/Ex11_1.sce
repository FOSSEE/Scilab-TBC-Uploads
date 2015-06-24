clear;
clc;
disp('Example 11.1')

//  aim : To determine the 
// (a) bore of the cylinder
// (b) piston stroke
// (c) speed of the engine

//  Given values
P_req = 60;// power required to develop, [kW]
P = 1.25;// boiler pressure, [MN/m^2]
Pb = .13;// back pressure, [MN/m^2]
cut_off = .3;// [stroke]
k = .82;// diagram factor
n = .78;// mechanical efficiency
LN = 3;// mean piston speed, [m/s]

// solution
// (a)
r = 1/cut_off;// expansion ratio
Pm = P/r*(1+log(r))-Pb;// mean effective pressure, [MN/m^2]
P_ind = P_req/n;// Actual indicated power developed, [kW]
P_the = P_ind/k;// Theoretical indicated power developed, [kW]

//  using indicated_power=Pm*LN*A
//  Hence
A = P_the/(Pm*LN)*10^-3;// piston area,[m^2]
d = sqrt(4*A/%pi)*10^3;// bore ,[mm]
mprintf('\n (a) The bore of the cylinder is  =  %f mm\n',d);

// (b)
// given that stroke is 1.25 times bore
L = 1.25*d;// [mm]
mprintf('\n (b) The piston stroke is  =  %f mm\n',L);

// (c)
// LN=mean piston speed, where L is stroke in meter and N is 2*rev/s,(since engine is double_acting)
//  hence
rev_per_sec = LN/(2*L*10^-3);// [rev/s]

rev_per_min = rev_per_sec*60;// [rev/min]
mprintf('\n (c) The speed of the engine is  =  %f rev/min\n',rev_per_min);

//  End
