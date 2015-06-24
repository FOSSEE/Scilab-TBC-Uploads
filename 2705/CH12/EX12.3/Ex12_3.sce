clear;
clc;
disp('Example 12.3');

// aim : To determine the 
//  (a) throat and exit areas
//   (b) degree of undercooling at exit
// Given values
P1 = 2;// inlet pressure of air, [MN/m^2]
T1 = 273+325;// inlet temperature of air, [MN/m^2]
P2 = .36;// exit pressure, [MN/m^2]
m_dot = 7.5;// flow rate of air, [kg/s]
n = 1.3;// polytropic index

// solution
// (a)
//  using steam table
v1 = .132;// [m^3/kg]
// given expansion following law PV^n=constant

Pt = P1*(2/(n+1))^(n/(n-1));// critical pressure, [MN/m^2]

//velocity at throat is
Ct = sqrt(2*n/(n-1)*P1*10^6*v1*(1-(Pt/P1)^(((n-1)/n))));// [m/s]
vt = v1*(P1/Pt)^(1/n);// [m^3/kg]
// using m_dot/At=Ct/vt
At = m_dot*vt/Ct*10^6;// throat area, [mm^2]
mprintf('\n (a) The throat area is =  %f  mm^2\n',At);

// at exit
C2 = sqrt(2*n/(n-1)*P1*10^6*v1*(1-(P2/P1)^(((n-1)/n))));// [m/s]
v2 = v1*(P1/P2)^(1/n);// [m^3/kg]
A2 = m_dot*v2/C2*10^6;// exit area, [mm^2]

mprintf('\n      The exit area is  =  %f  mm^2\n',A2);

//  (b)
T2 = T1*(P2/P1)^((n-1)/n);//outlet temperature, [K]
t2 = T2-273;//[C]
//  at exit pressure saturation temperature is
ts = 139.9;// saturation temperature,[C]
Doc = ts-t2;// Degree of undercooling,[C]
mprintf('\n (b) The Degree of undercooling at exit is  =  %f C\n',Doc);

// There is some calculation mistake in the book so answer is not matching

//  End
