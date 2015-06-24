// Chapter 3 example 10
//------------------------------------------------------------------------------
clc;
clear;
// Given data
C   = 30;           // per unit capacitance in pF/m
Vp  = 260;          // velocity of propagation in m/us
f   = 500*10^6      // freq in Hz
Zl  = 50;           // terminating load impedance in ohm

// calculations
v   = Vp/10^-6      // conversion from m/us to m/s
C1  = C*10^-12      // conversion from pF/m to F/m
// 1/sqrt(LC) = Vp
L   = 1/(v^2 * C1);  // per unit inductance
Zo  = sqrt(L/C1);     // charecteristic impedance in ohm
lamda = v/f          // wavelength
b    = (2*%pi)/lamda  // phase shift constant
p    = (Zl - Zo)/(Zl + Zo);     // Reflection coefficient

// Output
mprintf('Per Unit inductance = %d nH/m\n Charecteristic Impedance = %d ohm\n Phase shift Constant = %d rad/m\n Reflection co-efficient = %3.3f',L*10^9,Zo,b,abs(p));
//------------------------------------------------------------------------------

