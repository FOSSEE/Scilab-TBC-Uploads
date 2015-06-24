// Example 8.5: AV, Ri, Ro
clc, clear
VGSQ=-1.8; // in volts
rd=40; // in kilo-ohms
IDSS=8; // in mili-amperes
Vp=-2.8; // in volts
// From Fig. 8.16
RD=3.3; // in kilo-ohms
RS=1.5; // in kilo-ohms
gmo=2*IDSS/abs(Vp); // in mili-Siemens
gm=gmo*(1-VGSQ/Vp); // in mili-Siemens
mu=rd*gm; // Amplification factor
AV=(1+mu)*RD/(rd+RD);
Ri_dash=(RD+rd)/(1+mu); // in kilo-ohms
Ri=Ri_dash*RS/(Ri_dash+RS); // in kilo-ohms
Ro=rd*RD/(rd+RD);
disp(AV,"AV =");
disp(Ri,"Ri (kΩ) =");
disp(Ro,"Ro (kΩ) =");