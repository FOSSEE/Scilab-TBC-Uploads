// Example 5.16: Io
clc, clear
bta=100;
VBE=0.7; // in volts
// From Fig. 5.30
// Writing KVL for the indicated loop
I_ref=(10-VBE)/10; // in mili-amperes
Io=bta*I_ref/(2*(1+bta)); // in mili-amperes
disp(Io,"Io (mA) =");