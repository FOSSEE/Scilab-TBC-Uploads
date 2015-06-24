// Example 8.4: AV, Ri, Ro
clc, clear
IDSS=16; // in mili-amperes
Vp=-4; // in volts
rd=40; // in kilo-ohms
// From Fig. 8.14
RS=2.2; // in kilo-ohms
// Using dc analysis
VGSQ=-2.8; // in volts
gmo=2*IDSS/abs(Vp); // in mili-ampere per volt
gm=gmo*(1-VGSQ/Vp); // in mili-ampere per volt
mu=rd*gm; // Amplification factor
AV=mu*RS/(rd+(1+mu)*RS);
Ri=10; // in mega-ohms
Ro=rd*RS/(rd+(1+mu)*RS); // in kilo-ohms
disp(AV,"AV =");
disp(Ri,"Ri (MΩ) =");
disp(Ro,"Ro (kΩ) =");