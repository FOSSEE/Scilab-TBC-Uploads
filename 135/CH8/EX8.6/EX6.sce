// Example 8.6: gm, Ri, Ro, AV
clc, clear
VGSQ=8; // in volts
VT=3; // in volts
k=0.3e-3;
// From Fig. 8.18
RF=10e6; // in ohms
RD=2.2e3; // in ohms
gm=2*k*(VGSQ-VT); // in Siemens
Ri=RF/(1+gm*RD); // in ohms
Ro=RF*RD/(RF+RD); // in ohms
AV=-gm*Ro;
gm=gm*1e3; // in mili-Siemens
Ri=Ri*1e-6; // in mega-ohms
Ro=Ro*1e-3; // in kilo-ohms
disp(gm,"gm (mS) =");
disp(AV,"AV =");
disp(Ri,"Ri (MΩ) =");
disp(Ro,"Ro (kΩ) =");