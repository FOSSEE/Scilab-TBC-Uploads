// Example 8.2: Voltage gain
clc, clear
gm=2; // in mili-ampere per volt
rd=10; // in kilo-ohms
// From Fig. 8.7
RD_eff=10*10/(10+10); // in kilo-ohms
AV=-gm*rd*RD_eff/(rd+RD_eff); // Voltage gain
disp(AV,"Voltage gain =");