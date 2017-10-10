// Calculating the direct and quadrature axis synchronous reactances
clc;
disp('Example 11.18, Page No. = 11.52')
// Given Data
// 3 phase star connected selient pole alternator
Q = 2500;// kVA rating
E = 2400;// Voltage rating (in kV)
f = 60;// Frequency (in Hz)
p = 32;// Number of poles
D = 2.5;// Stator bore (in meter)
L = 0.44;// Core length (in meter)
Tph = 224;// Turns per phase
lg = 10;// Air gap length (in meter)
Kg = 1.11;// Air gap constraction factor
Kw = 0.95;// Winding factor
R = 0.69;// Ratio of pole arc to pole pitch
A1 = 1.068;// Ratio of amplitude of fundamental of gap flux density to maximum gap density
Xl = 0.14;// Per unit leakage reactance
// Calculation of the direct and quadrature axis synchronous reactances
xm = 7.54*f*Tph*Tph*Kw*Kw*D*L/(p*p*lg*10^(-3)*Kg)*10^(-6);// Magnetic reactance per phase (in ohm)
Eph =E/3^(1/2);// Voltage per phase
Iph = Q*1000/(3^(1/2)*E);// Current in each phase
Xm = Iph*xm/Eph;// Per unit magnetising reactance
a = R*%pi;// Angle embraced by pole arc (in rad)
pd = (a+sin(a))/(4*sin(a/2));// Reduction factor for direct axis armature mmf
Ad1 = pd*A1;// Flux distribution factor for direct axis
Xad = Ad1*Xm;// Per unit direct axis armature reaction reactance
Aq1 = ((4*R+1)/5)-(sin(R*%pi)/%pi);// Flux distribution co-efficient for quadrature axis
Xaq = Aq1*Xm;// Per unit quadrature axis armature reaction reactance
Xd = Xl+Xad;// Per unit direct axis synchronous reactance
Xq = Xl+Xaq;// Per unit quadrature axis synchronous reactance
disp(Xd,'Per unit direct axis synchronous reactance =');
disp(Xq,'Per unit quadrature axis synchronous reactance =');
//in book answers are 0.916 and 0.533 respectively.  The answers vary due to round off error
