// Example 5.13: (i) R1
//              (ii) R1 for IC = 10 μA
clc, clear
IC=1e-3; // in amperes
VCC=10; // in volts
bta=125;
VBE=0.7; // in volts

disp("Part (i)");
R1=bta*(VCC-VBE)/((bta+2)*IC); // in ohms
R1=R1*1e-3; // in kilo-ohms
disp(R1,"R1 (kΩ) =");

disp("Part (i)");
IC=10e-6; // in amperes
R1=bta*(VCC-VBE)/((bta+2)*IC); // in ohms
R1=R1*1e-3; // in kilo-ohms
disp(R1,"R1 for (IC = 10 μA) (kΩ) =");