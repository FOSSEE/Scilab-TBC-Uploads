// Example 2.11 (a) Alternating component of voltage acroos load resistance
//              (b) Total voltage across load resistance
//              (c) Total current
clc, clear
T=293; // Operating temperature in kelvins
VT=T/11600; // Voltage equivalent to temperatue at room temperature in volts
// In the Fig. 2.21(a)
VAA=9; // in volts
Vm=0.2; // in volts
RL=2e3; // Load resistance in ohms
Vy=0.6; // Cut-in voltage in volts
Rf=10; // Forward resistance of diode in ohms
eta=2;

disp("Part (a)")
// From DC model in Fig. 2.21(b)
IDQ=(VAA-Vy)/(RL+Rf); // DC current through diode or load resistance in amperes
rd=eta*VT/IDQ; // Dynamic resistance in ohms
// This dynamic resistance is used in AC model in Fig. 2.21(c)
Vom=Vm*RL/(RL+rd); // Amplitude of alternating component of the voltage across load resistance in volts
disp(Vom,"Amplitude of alternating component of the voltage across load resistance (V) =");
disp("Therefore, the alternating component of the voltage across load resistance is 0.199 sin ωt V");

disp("Part (b)");
VDQ=IDQ*RL; // DC component of voltage across load resistance in volts
disp(VDQ,"DC component of voltage across load resistance (V) =");
disp("Therefore, total voltage across load resistance is (8.36 + 0.199 sin ωt) V");

disp("Part (C)");
IDQ=IDQ*1e3; // DC current through load resistance in miliamperes
idm=Vm/(RL+rd); // Amplitude of alternating component of the current across load resistance in amperes
idm=idm*1e3; // Amplitude of alternating component of the current across load resistance in miliamperes
disp(IDQ,"DC component of current across load resistance (mA) =");
disp(idm,"Amplitude of alternating component of the current across load resistance (mA) =");
disp("Therefore, total current across load resistance is (4.18 + 0.099 sin ωt) mA");