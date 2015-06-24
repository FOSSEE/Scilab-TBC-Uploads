// Exa 6.35
format('v',7);clc;clear;close;
// Given data
R3 = 260;//resistance in ohm
C4 = 0.5;// in µF
C4 = C4 * 10^-6;// in F
C2 = 106;// in pF
C2 = C2 * 10^-12;// in F
R4 = 1000/%pi;//resistance in ohm
r1 = (C4/C2)*R3;//resistance in ohm
C1 = (R4/R3)*C2;// in F
Epsilon_o = 8.854*10^-12;
d = 4.5// in mm
d = d * 10^-3;// in m
D= 0.12;// in m
A= %pi*D^2/4;// in m^2
disp(r1,"The resistance in Ω is :")
C1= C1*10^12;// in pF
disp(C1,"The capacitance in pF is");
C1= C1*10^-12;// in F
f = 50;// in Hz
omega = 2*%pi*f;// in rad/sec
Pf= omega*C1*r1;// power factor
disp(Pf,"The power factor is");
// C1 = Epsilon_r*Epsilon_o*(A/d);
Epsilon_r = (C1*d)/(Epsilon_o*A);// the relative permittivity 
disp(Epsilon_r,"The relative permittivity is");

// Note: The calculation of evaluating the value of C1 is wrong, so the answer of C1 in the book is wrong. But they putted the correct value of C1 to find the value of relative permittivity
