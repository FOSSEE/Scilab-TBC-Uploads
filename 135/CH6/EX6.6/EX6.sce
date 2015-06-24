// Example 6.6: AI, Ri, AVs
clc, clear
bta=100;
VBE=0.7; // Cut-in voltage in volts
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
// From Fig. 6.33
RB=100e3; // in ohms
RC=3e3; // in ohms
VBB=3; // in volts

// DC analysis
// From dc equivalent circuit in Fig. 6.34(a)
IBQ=(VBB-VBE)/RB; // in amperes
ICQ=bta*IBQ; // in amperes
gm=ICQ/VT; // in ampere per volt
r_pi=bta/gm; // in ohms

// AC analysis
// From ac equivalent circuit using approximate hybrid-π model in Fig. 6.34(b)
AI=-bta;
Ri=RB+r_pi; // in ohms
AVs=-bta*RC/(RB+r_pi);
Ri=Ri*1e-3; // in kilo-ohms
disp(AI,"AI =");
disp(Ri,"Ri (kΩ) =");
disp(AVs,"AVs =");