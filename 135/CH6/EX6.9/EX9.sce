// Example 6.9: rπ, AI, Ri, AVs, Ro, Ro'
clc, clear
bta=200;
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
// From Fig. 6.39
VBE=0.7; // Cut-in voltage in volts
VCC=9; // in volts
RB=200e3; // in ohms
RC=2e3; // in ohms

// DC analysis
// From dc equivalent circuit in Fig. 6.40(a)
// Writing KVL from collector to base loop
IB=(VCC-VBE)/(RB+(1+bta)*RC); // in amperes
ICQ=bta*IB;  // in amperes
gm=ICQ/VT; // in mho
r_pi=bta/gm; // in ohms

// AC analysis
// From ac equivalent circuit using Miller's theorem in Fig. 6.40(b)
// Assuming AV >> 1
RL=RB*RC/(RB+RC); // Effective load resistance in ohms
// Using hybrid-π model and approximate resulta given in Table 6.5 for CE amplifier stage, we have
AI=-bta;
AV=-bta*RL/r_pi;
Ro=%inf;
r_pi=r_pi*1e-3; // in kilo-ohms
RL=RL*1e-3; // in kilo-ohms
disp(r_pi,"rπ (kΩ) =");
disp(AI,"AI =");
disp(AV,"AVs =");
disp(Ro,"Ro =");
disp(RL,"Ro'' (kΩ) =");