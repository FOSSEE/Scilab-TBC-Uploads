// Exa 6.9
format('v',7);clc;clear;close;
// Given data
R1 = 2.7;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 22;// in k ohm
R2 = R2 * 10^3;// in ohm
R4 = 100;// in k ohm
R4 = R4 * 10^3;// in ohm
C1 = 5;// in µF
C1 = C1 * 10^-6;// in F
f = 2.2;// in kHz
f = f * 10^3;// in Hz
//From omega^2 = 1/(R1*C1*R3*C3);
// C3 = 1/(R1*C1*R3*(omega^2));     (i)
// R2/R4 = R1/R3 + C3/C1                   (ii)
// From eq(i) and (ii)
R3 = (R4/R2) * (R1 + 1/( ((2*%pi*f)^2)*R1*(C1^2) ));// equivalent parallel resistance in ohm
R3= R3*10^-3;// in k ohm
disp(R3,"The equivalent parallel resistance in kΩ is");
R3= R3*10^3;// in ohm
C3 = 1/(R1*C1*R3*((2*%pi*f)^2));// equivalent parallel capacitance in F
C3 = C3 * 10^12;// in pF
disp(C3,"The equivalent parallel capacitance in pF is");
