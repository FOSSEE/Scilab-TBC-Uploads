// Example 6.10: Ri,eff, Ro, AV, AI
clc, clear
bta=200;
ro=50e3; // in ohms
VBE=0.7; // Cut-in voltage in volts
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
// From Fig. 6.44
VCC=16; // in volts
R1=90e3; // in ohms
R2=10e3; // in ohms
RC=2.2e3; // in ohms
RE=0.68e3; // in ohms

// DC analysis
// From the Thevnin's equivalent circuit in Fig. 6.45(a)
RB=R1*R2/(R1+R2); // in ohms
VBB=VCC*R2/(R1+R2); // in volts
// From the base loop
IB=(VBB-VBE)/(RB+(1+bta)*RE); // in amperes
IE=(1+bta)*IB; // in amperes
re=VT/IE; // in ohms

// AC analysis
Ri=bta*re+(1+bta)*RE; // in ohms
Ri_eff=RB*Ri/(RB+Ri); // in ohms
AI=-bta*RB/(RB+bta*(re+RE));
AV=-RC/RE;
Ri_eff=Ri_eff*1e-3; // in kilo-ohms
disp(Ri_eff,"Ri,eff (kΩ) =");
disp(%inf,"Ro =");
disp(AI,"AI =");
disp(AV,"AVs =");