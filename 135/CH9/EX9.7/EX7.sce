// Example 9.7: AV, Ri, Ro
clc, clear
RE=0.5; // in kilo-ohms
Rs=50; // in kilo-ohms
Ic1=15e-3; // in mili-amperes
Ic2=1; // in mili-amperes
VA=100; // in volts
bta=150;
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
// For Q1
gm1=Ic1/VT; // in mili-mho
r_pi1=bta/gm1; // in kilo-ohms
ro1=VA/Ic1; // in kilo-ohms
// For Q2
gm2=Ic2/VT; // in mili-mho
r_pi2=bta/gm2; // in kilo-ohms
ro2=VA/Ic2; // in kilo-ohms
// From ac equivalent circuit in Fig. 9.17
RE2=ro2*RE/(ro2+RE); // Effective load for stage Q2 in kilo-ohms
Ri2=r_pi2+(1+bta)*RE2; // Input resistance for second stage in kilo-ohms
AV2=(1+bta)*RE2/Ri2; // Voltage gain of the second stage
RE1=ro1*Ri2/(ro1+Ri2); // Effective load for the first stage in kilo-ohms
Ri1=r_pi1+(1+bta)*RE1; // Input resistance for first stage in kilo-ohms
AV1=(1+bta)*RE1/Ri1; // Voltage gain of first stage
AV=AV1*AV2; // Overall voltage gain
Ro=ro2*(r_pi2+ro1)/(ro2*(1+bta)+r_pi2+ro1); // Output resistance in kilo-ohms
Ri1=Ri1*1e-3; // in Mega-ohms
disp(AV,"AV =");
disp(Ri1,"Ri (MΩ) =");
disp(Ro,"Ro (kΩ) =");