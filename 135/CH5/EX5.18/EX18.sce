// Example 5.18: Emitter current in transistor Q3
clc, clear
bta=100;
VBE=0.75; // in volts
// From Fig. 5.32
I=(10-VBE)/4.7; // in mili-amperes
IE=I/2; // in mili-amperes
disp(IE,"Emitter current in transistor Q3 (mA) =");