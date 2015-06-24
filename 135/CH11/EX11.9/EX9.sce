// Example 11.9: (a) RE
//               (b) RL
//               (c) R1F
//               (d) Quiescent collector current
clc, clear
GmF=1; // Transconductance gain in mili-amperes per volts
AVF=-4; // Voltage gain
D=50; // Desensitivity factor
RS=1; // in kilo-ohms
btao=150;
AoL=GmF*D; // Open loop mutual conductance in mili-amperes per volts

disp("Part (a)");
RE=(D-1)/AoL; // in kilo-ohms
disp(RE,"RE (kΩ​) =");

disp("Part (b)");
RL=-AVF/GmF; // in kilo-ohms
disp(RL,"RL (kΩ​) =");

disp("Part (c)");
r_pi=btao/AoL-RS-RE; // in kilo-ohms
R1F=RS+r_pi+(1+btao)*RE; // in kilo-ohms
disp(R1F,"R1F (kΩ​) =");

disp("Part (d)");
VT=26e-3; // Voltage equivalent to temperatue at room temperature in volts
IC=btao*VT/r_pi; // in mili-amperes
disp(IC,"IC (mA) =");