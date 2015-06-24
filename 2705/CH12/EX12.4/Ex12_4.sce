clear;
clc;
disp('Example 12.4');

// aim : To determine the 
//  (a) throat and exit velocities
//  (b) throat and exit areas

// Given values
P1 = 2.2;// inlet pressure, [MN/m^2]
T1 = 273+260;// inlet temperature, [K]
P2 = .4;// exit pressure,[MN/m^2]
eff = .85;// efficiency of the nozzle after throat
m_dot = 11;// steam flow rate in the nozzle, [kg/s]

// solution
// (a)
// assuming steam is following same law as previous question 12.3
Pt = .546*P1;// critical pressure,[MN/m^2]
// from Fig. 12.6
h1 = 2940;// [kJ/kg]
ht = 2790;// [kJ/kg]

Ct = sqrt(2*(h1-ht)*10^3);// [m/s]

//  again from Fig. 12.6
h2_prime = 2590;// [kJ/kg]
// using eff = (ht-h2)/(ht-h2_prime)

h2 = ht-eff*(ht-h2_prime); // [kJ/kg]

C2 = sqrt(2*(h1-h2)*10^3);// [m/s]

// (b)
// from chart
vt = .16;// [m^3/kg]
v2 = .44;// [m^3/kg]
//  using m_dot*v=A*C
At = m_dot*vt/Ct*10^6;// throat area, [mm^2]

A2 = m_dot*v2/C2*10^6;// throat area, [mm^2]

mprintf('\n (a) The throat velocity is  =  %f  m/s\n',Ct);
mprintf('\n      The exit velocity is  =  %f  m/s\n',C2);
mprintf('\n (b) The throat area is  =  %f  mm^2\n',At);
mprintf('\n      The throat area is  =  %f  mm^2\n',A2);

//  End
