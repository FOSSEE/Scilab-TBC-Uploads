// Example 6.2: rπ, gm
clc, clear
IBQ=7.6e-6; // in amperes
bta=104;
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
ICQ=IBQ*bta; // in amperes
gm=ICQ/VT; // in ampere per volt
gm=gm*1e3; // in mili-ampere per volt
r_pi=bta/gm; // in kilo-ohms
disp(r_pi,"rπ (kΩ) =");
disp(gm,"gm (mA/V) =");