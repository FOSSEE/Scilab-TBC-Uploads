clear;
clc;
disp('Example 12.1');

//  aim : To determine the
//  (a) throat area
//   (b) exit area
//   (c) Mach number at exit

// Given values
P1 = 3.5;// inlet pressure of air, [MN/m^2]
T1 = 273+500;// inlet temperature of air, [MN/m^2]
P2 = .7;// exit pressure, [MN/m^2]
m_dot = 1.3;// flow rate of air, [kg/s]
Gamma = 1.4;// heat capacity ratio
R = .287;// [kJ/kg K]

// solution
// given expansion may be considered to be adiabatic and to follow the law PV^Gamma=constant
// using ideal gas law
v1 = R*T1/P1*10^-3;// [m^3/kg]
Pt = P1*(2/(Gamma+1))^(Gamma/(Gamma-1));// critical pressure, [MN/m^2]

//  velocity at throat is
Ct = sqrt(2*Gamma/(Gamma-1)*P1*10^6*v1*(1-(Pt/P1)^(((Gamma-1)/Gamma))));// [m/s]
vt = v1*(P1/Pt)^(1/Gamma);// [m^3/kg]
// using m_dot/At=Ct/vt
At = m_dot*vt/Ct*10^6;// throat area, [mm^2]
mprintf('\n (a) The throat area is  =  %f mm^2\n',At);

// (b)
//  at exit
C2 = sqrt(2*Gamma/(Gamma-1)*P1*10^6*v1*(1-(P2/P1)^(((Gamma-1)/Gamma))));// [m/s]
v2 = v1*(P1/P2)^(1/Gamma);// [m^3/kg]
A2 = m_dot*v2/C2*10^6;// exit area, [mm^2]

mprintf('\n (b) The exit area is  =  %f  mm^2\n',A2);

//  (c)
M = C2/Ct;
mprintf('\n (c) The Mach number at exit is  =  %f\n',M);

//  End
