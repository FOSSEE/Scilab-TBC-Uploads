// Example 8.3: gm, µ, Ri, Ro, AV
clc, clear
VGSQ=-2.6; // in volts
IDSS=8; // in mili-amperes
Vp=-6; // in volts
rd=50; // in kilo-ohms
// From Fig. 8.11
RD=3.3; // in kilo-ohms
RG=1; // in mega-ohms
RS=1; // in kilo-ohms
gmo=2*IDSS/abs(Vp); // in mili-ampere per volt
gm=gmo*(1-VGSQ/Vp); // in mili-ampere per volt
mu=rd*gm; // µ
Ro=(rd+(1+mu)*RS)*RD/(RD+rd+(1+mu)*RS); // in kilo-ohms
AV=-mu*RD/(RD+rd+(1+mu)*RS);
disp(gm,"gm (mA/V) =");
disp(mu,"µ =");
disp(RG,"Ri (MΩ) =");
disp(Ro,"Ro (kΩ) =");
disp(AV,"AV =");