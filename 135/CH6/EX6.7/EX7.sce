// Example 6.7: (a) Load resistance RE to make Ri ≥ 500 kΩ
//              (b) AV, Ro, Ro'
clc, clear
IC=2e-3; // in amperes
Rs=5e3; // Source resistance in ohms
bta=125;
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts

disp("Part (a)");
Ri=500e3; // in ohms
gm=IC/VT; // in mho
r_pi=bta/gm; // in ohms
RE=(Ri-r_pi)/(1+bta); // in ohms
REk=RE*1e-3; // in kilo-ohms
disp(REk,"RE (kΩ) =");

disp("Part (b)");
AV=(1+bta)*RE/(Rs+Ri);
Ro=(Rs+r_pi)/(1+bta); // in ohms
Ro_dash=Ro*RE/(Ro+RE); // in ohms
disp(Ro,"Ro (Ω) =");
disp(Ro_dash,"Ro'' (Ω) =");