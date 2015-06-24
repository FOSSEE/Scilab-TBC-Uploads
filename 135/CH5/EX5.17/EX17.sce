// Example 5.17: (i) IC1 and IC2
//              (ii) RC so that Vo = 6 V
clc, clear
bta=200;
// From Fig. 5.31

disp("Part (i)");
I_ref=(12-0.7)/15; // in amperes
I1=0.7/2.8; // in amperes
IC=(I_ref-I1)*bta/(bta+2); // in mili-amperes
disp(IC,"IC1 (mA) =");
disp(IC,"IC2 (mA) =");

disp("Part (ii)");
Vo=6; // in volts
RC=(12-Vo)/IC; // in kilo-ohms
disp(RC,"RC so that (Vo = 6 V) (kΩ) =");