// Example 9.4: (i) Voltage gain, Input impedance, Output impedance
//             (ii) Output voltage
clc, clear
gm=2.5; // in mili-Siemens
// From Fig. 9.14(a)
RG=3; // in Mega-ohms
RD=2.2; // in kilo-ohms

disp("Part (i)");
AV1=-gm*RD; // Voltage gain of both individual stages
AV=AV1^2; // Overall voltage gain
disp(AV,"Voltage gain =");
disp(RG,"Input impedance (MΩ) =");
disp(RD,"Output impedance (kΩ) =");

disp("Part (ii)");
Vi=10; // in mili-volts
RD_dash=RD*10/(RD+10); // Effective load of secong stage in kilo-ohms
// Now the gain of second stage
AV2=-gm*RD_dash;
AV=AV1*AV2; // Overall voltage gain
Vo=Vi*AV; // Output voltage in mili-volts
disp(Vo,"Output voltage (mV) =");