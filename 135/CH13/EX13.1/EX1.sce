// Example 13.1: dc input power, ac output power, Efficiency
clc, clear
Ib=5e-3; // Base current in amperes
// From Fig. 13.8
RB=1.5e3; // in ohms
RC=16; // in ohms
bta=40;
VCC=18; // in volts
VBE=0.7; // in volts
IBQ=(VCC-VBE)/RB; // in amperes
ICQ=bta*IBQ; // in amperes
Pi_dc=VCC*ICQ; // dc input power in watts
Ic=bta*Ib; // in amperes
Po_ac=Ic^2*RC; // ac output power
eta=Po_ac*100/Pi_dc; // Efficiency in percentage
disp(Pi_dc,"dc input power (W) =");
disp(Po_ac,"ac output power (W) =");
disp(eta,"Efficiency (%) =");