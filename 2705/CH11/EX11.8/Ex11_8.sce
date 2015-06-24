clear;
clc;
disp('Example 11.8');

// aim : To determine
// (a) the actual and hypothetical mean effective pressures referred to the low-pressure cylinder
// (b) the overall diagram factor
// (c) the indicated power 

// given values
P = 1100;// steam supply pressure, [kN/m^2]
Pb = 32;// back pressure, [kN/m^2]
d1 = 300*10^-3;// cylinder1 diameter, [m]
d2 = 600*10^-3;// cylinder2 diameter, [m]
L = 400*10^-3;// common stroke of both cylinder, [m]

A1 = 12.5;//  average area of indicated diagram for HP, [cm^2]
A2 = 11.4;//  average area of indicated diagram for LP, [cm^2]

P1 = 270;// indicator calibration, [kN/m^2/ cm]
P2 = 80;// spring calibration, [kN/m^2/ cm]
N = 2.7;// engine speed, [rev/s]
l = .75;// length of both diagram, [m]

// solution
// (a)
// for HP cylinder
Pmh = P1*A1/7.5;// [kN/m^2]
F = Pmh*%pi/4*d1^2;// force on HP, [kN]
PmH = Pmh*(d1/d2)^2;// pressure referred to LP cylinder, [kN/m^2]
PmL = P2*A2/7.5;// pressure for LP cylinder, [kN/m^2]
PmA = PmH+PmL;// actual effective pressure referred to LP cylinder, [kN/m^2]

Ah = %pi/4*d1^2;// area of HP cylinder, [m^2]
Vh = Ah*L;// volume of HP cylinder, [m^3]
CVh = Vh/3;// cut-off volume of HP cylinder, [m^3]
Al = %pi/4*d2^2;// area of LP cylinder, [m^2]
Vl = Al*L;// volume of LP cylinder, [m^3]

R = Vl/CVh;// expansion ratio
Pm = P/R*(1+log(R))-Pb;// hypothetical mean effective pressure referred to LP cylinder, [kN/m^2]

mprintf('\n (a) The actual mean effective pressure referred to LP cylinder is  =  %f kN/m^2\n',PmA);
mprintf('\n     The hypothetical mean effective pressure referred to LP cylinder is  =  %f kN/m^2\n',Pm);

// (a)
ko = PmA/Pm;// overall diagram factor
mprintf('\n (b) The overall diagram factor is  =  %f\n',ko);

// (c) 
ip = PmA*L*Al*N*2;// indicated power, [kW]
mprintf('\n (c) The indicated power is  =  %f kW\n',ip);

//   End
