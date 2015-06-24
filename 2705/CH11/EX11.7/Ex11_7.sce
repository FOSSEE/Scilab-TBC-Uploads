clear;
clc;
disp('Example 11.7');

// aim : To determine
// (a) The speed of the engine
// (b) the diameter of the high pressure cylinder

// given values
ip = 230;// indicated power, [kW]
P = 1400;// admission pressure, [kN/m^2]
Pb = 35;// exhaust pressure, [kN/m^2]
R = 12.5;// expansion ratio
d1 = 400*10^-3;// diameter of low pressure cylinder, [m]
L = 500*10^-3;// stroke of both the cylinder, [m]
k = .78;// diagram factor
rv = 2.5;// expansion ratio of high pressure cylinder

// solution
// (a)
Pm = P/R*(1+log(R))-Pb;// mean effective pressure in low pressure cylinder, [kN/m^2]
ipt = ip/k;// theoretical indicated power, [kw]
// using ip=Pm*L*A*N
A = %pi/4*d1^2;// area , [m^2]
N = ipt/(Pm*L*A*2);// speed, [rev/s]
mprintf('\n (a) The engine speed is  =  %f  rev/s\n',N);

// (b)
Vl = A*L;// volume of low pressure cylinder, [m^3]
COV = Vl/R;// cutt off volume of hp cylinder, [m^3]
V = COV*rv;// total volume, [m^3]

//  V = %pi/4*d^2*L, so
d = sqrt(4*V/%pi/L);// diameter of high pressure cylinder, [m]
mprintf('\n (b) The diameter of the high pressure cylinder is  =  %f  mm\n',d*1000);

//  End
