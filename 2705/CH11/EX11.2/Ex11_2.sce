clear;
clc;
disp('Example 11.2')

//  aim : To determine the 
//  (a) the diameter of the cylinder
//  (b) piston stroke
//  (c) actual steam consumption and indicated thermal efficiency

//  Given values
P = 900;// inlet pressure, [kN/m^2]
Pb = 140;//  exhaust pressure, [kN/m^2]
cut_off =.4;// [stroke]
k = .8;// diagram factor
rs = 1.2;// stroke to bore ratio
N = 4;// engine speed, [rev/s]
ip = 22.5;// power output from the engine, [kW]

// solution
// (a)
r = 1/cut_off;// expansion ratio
Pm = P/r*(1+log(r))-Pb;// mean effective pressure, [kN/m^2]
Pm = Pm*k;// actual mean effective pressure, [kN/m^2]

// using ip=Pm*L*A*N
// and L=r*d; where L is stroke and d is bore
d = (ip/(Pm*rs*%pi/4*2*N))^(1/3);// diameter of the cylinder, [m]

mprintf('\n (a) The diameter of the cylinder is  =  %f  mm\n',d*1000);

// (b)
L = rs*d;// stroke, [m]
mprintf('\n (b) The piston stroke is  =  %f  mm\n',L*1000);

// (c)
SV = %pi/4*d^2*L;// stroke volume, [m^3]
V = SV*cut_off*2*240*60;// volume of steam consumed per  hour, [m^3]
v = .2148;// specific volume at 900 kN/m^2, [m^3/kg]
SC = V/v;// steam consumed/h, [kg]
ASC = 1.5*SC;// actual steam consumption/h, [kg]
mprintf('\n (c) The actual steam consumption/h is  =  %f kg\n',ASC);

m_dot = ASC/3600;// steam consumption,[kg/s] 
// from steam table
hg = 2772.1;// specific enthalpy of inlet steam, [kJ/kg]
hfe = 458.4;// specific liquid enthalpy at exhaust pressure, [kJ/kg]

ITE = ip/(m_dot*(hg-hfe));// indicated thermal efficiency
mprintf('\n     The indicated thermal efficiency is  =  %f  percent\n',ITE*100);

//  End
