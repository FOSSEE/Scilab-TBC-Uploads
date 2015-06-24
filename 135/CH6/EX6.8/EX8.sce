// Example 6.8: Ri, AVs
clc, clear
IC=0.2e-3; // in amperes
bta=125;
Rs=2e3; // in ohms
RE=100; // in ohms
RC=5e3; // in ohms
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
gm=IC/VT; // in mho
r_pi=bta/gm; // in ohms
Ri=r_pi+(1+bta)*RE; // in ohms
AVs=-bta*RC/(Rs+r_pi+(1+bta)*RE);
Ri=Ri*1e-3; // in kilo-ohms
disp(Ri,"Ri (kΩ) =");
disp(AVs,"AVs =");