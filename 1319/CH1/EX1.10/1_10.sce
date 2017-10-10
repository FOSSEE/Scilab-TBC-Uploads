// RLC circuit problems on resonace

clc;
clear;

R=6.28;
L=20*(10^-3);
f=5*(10^3);

w=2*%pi*f;

C=1/(L*(w^2));

Xc=1/(w*C);
Xl=L*w;

Vc=5;

Z=Xc+R+Xl;

I=Vc/Xc // Total current

V=I*R;

// frequency is inversely proportional to square root of capacitance
// So if C is halved; f will increase square root of 2 times more.

fn=sqrt(2)*f;

Xln=2*%pi*fn*L;

Q=Xln/R;

//Note under resonance conditions Vl and Vc are much greater than the supply voltage.

mprintf('i) The value of capacitor = %f micro F \n',(10^6)*C)
mprintf('ii) The supply voltage = %f V \n',V)
mprintf('iii) The frequency of resonance when C is halved = %f Hz \n',fn)
mprintf('     The Q of the new circuit = %f \n',Q) 
