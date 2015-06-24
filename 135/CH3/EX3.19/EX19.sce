// Example 3.19: (a) VL,IL,Iz,IR
//               (b) RL for maximum power dissipation for zener diode
//               (c) Maximum value of RL for zener diode to remain ON
clc, clear
// From Fig. 3.42
Vs=25; // in volts
Rs=220; // in ohms
Vz=10; // in volts
Pzmax=400; // in mili-watts
Izmax=Pzmax/Vz; // in miliamperes
Izmin=Izmax*10/100; // in miliamperes

disp("Part (a)");
RL=180; // in ohms
VL=Vz; // in volts
IL=Vz/RL; // in amperes
IL=IL*1e3; // in miliamperes
IR=(Vs-Vz)/Rs; // in amperes
IR=IR*1e3; // in miliamperes
Iz=IR-IL; // in miliamperes
disp(VL,"VL (V) =");
disp(IL,"IL (mA) =");
disp(Iz,"Iz (mA) =");
disp(IR,"IR (mA) =");

disp("Part (b)");
RL=Vz*1e3/(IR-Izmax); // in ohms
disp(RL,"RL for maximum power dissipation for zener diode (Ω) =");

disp("Part (c)");
RL=Vz*1e3/(IR-Izmin); // in ohms
disp(RL,"Maximum value of RL for zener diode to remain ON (Ω) =");
disp("If Izmin=0");
RL=Vz*1e3/IR; // in ohms
disp(RL,"Maximum value of RL for zener diode to remain ON (Ω) =");