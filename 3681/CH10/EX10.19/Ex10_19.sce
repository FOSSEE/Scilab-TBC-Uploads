// Calculating the current in rotor bars and in end rings
clc;
disp('Example 10.19, Page No. = 10.50')
// Given Data
p = 6;// Number of poles
ms = 3;// Number of phases of stator
Nss = 72;// Number of stator slots
Nc = 15;// Number of conductors per slot
Sr = 55;// Number of stator slots
Is = 24.1;// Stator current (in Ampere)
Coil_Span = 11;// Coil span (slots)
pf = 0.83;// Power factor
// Calculation of the current in rotor bars and in end rings
q = Nss/(ms*p);// Stator slots per pole per phase
Kd = sin(60/2*%pi/180)/(q*sin(60/(2*4)*%pi/180));// Distribution factor
Ns_pole = Nss/p;// Slots per pole
alpha = 1/Ns_pole*180;// Angle of chording (in degree).  Since the winding is chorded by 1 slot pitch
Kp = cos(alpha/2*%pi/180);// Pitch factor
Kws = Kd*Kp;// Stator winding factor
Ir_ = Is*pf;// Stator current equivalent to rotor current (in Ampere)
Ns = Nss*Nc;// Total stator conductors
Ts = Ns/(ms*2);// Stator turns per phase
Ib = 2*ms*Kws*Ts*Ir_/Sr;// Current in each rotor bar (in Ampere)
Ie = Sr*Ib/(%pi*p);// Current in each end ring (in Ampere)
disp(Ib,'Current in each rotor bar (Ampere) =');
disp(Ie,'Current in each end ring (Ampere) =');
//in book answers are 375.4 Ampere and 1095.3 Ampere respectively.  The answers vary due to round off error
