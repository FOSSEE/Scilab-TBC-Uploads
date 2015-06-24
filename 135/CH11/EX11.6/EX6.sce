// Example 11.6: (b) R2/R1
//               (c) Amount of feedback in decibels
//               (d) Vo, Vf, Vi
//               (e) Decrease in Af
clc, clear

disp("Part (b)");
A=1e4;
Af=10;
bta=(A/Af-1)/A; // Feedback factor
R2_R1=1/bta-1; // R2/R1
disp(R2_R1,"R2/R1 =");

disp("Part (c)");
dB=20*log10(1+A*bta); // Amount of feedback in decibels
disp(dB,"Amount of feedback (dB) =");

disp("Part (d)");
Vs=1; // in volts
Vo=Af*Vs; // in volts
Vf=bta*Vo; // in volts
Vi=Vs-Vf; // in volts
disp(Vo,"Vo (V) =");
disp(Vf,"Vf (V) =");
disp(Vi,"Vi (V) =");

disp("Part (e)");
A=80*A/100; // Decreased A
Af_dash=A/(1+A*bta); // Decreased Af
C=(Af-Af_dash)*100/Af; // Percentage decrease in Af
disp(C,"Percentage decrease in Af (%) =");