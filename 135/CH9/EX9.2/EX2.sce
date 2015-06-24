// Example 9.2: Overall voltage gain, Current gain, Input impedance, Output impedance
clc, clear
bta=100;
VBE=0.7; // in volts
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
// From Fig. 9.7
R1=22; // in kilo-ohms
R2=3.3; // in kilo-ohms
RC1=6; // in kilo-ohms
RE1=0.5; // in kilo-ohms
R3=16; // in kilo-ohms
R4=6.2; // in kilo-ohms
RC2=2; // in kilo-ohms
RE2=1; // in kilo-ohms
RL=10; // in kilo-ohms


// DC analysis

// From simplified dc equivalent circuit for stage 1 in Fig. 9.8(a)
RB1=R1*R2/(R1+R2); // in kilo-ohms
VBB1=15*R2/(R1+R2); // in volts
IB1=(VBB1-VBE)/(RB1+(1+bta)*RE1); // in mili-amperes
IC1=bta*IB1; // in mili-amperes
gm1=IC1/VT; // in mili-Siemens
r_pi1=bta/gm1; // in kilo-ohms

// From simplified dc equivalent circuit for stage 2 in Fig. 9.8(b)
RB2=R3*R4/(R3+R4); // in kilo-ohms
VBB2=15*R4/(R3+R4); // in volts
IB2=(VBB2-VBE)/(RB2+(1+bta)*RE2); // in mili-amperes
IC2=bta*IB2; // in mili-amperes
gm2=IC2/VT; // in mili-Siemens
r_pi2=bta/gm2; // in kilo-ohms


// AC analysis

// Applying Thevnin theorem at 1-1' in ac equivalent circuit in Fig. 9.9 to obtain equivalent circuit of stage 1 in Fig. 9.10(a)
RL1=RC1*RB2/(RC1+RB2); // Effective load for first stage in kilo-ohms
AV1=-bta*RL1/r_pi1; // Voltage gain of first stage

// Using the Thevnin's equivalent of first stage the equivalent circuit of second stage is shown in Fig. 9.10(b)
RL2=RC2*RL/(RC2+RL); // Effective load for second stage in kilo-ohms
AV2=-bta*RL2/(RL1+r_pi2); // Voltage gain of second stage

Io_Ic2=-RC2/(RC2+RL); // Io/Ic2
Ic2_Ib2=-bta; // Ic2/Ib2
//From simplified diagram in Fig. 9.11
Ib2_Ic1=-RL1/(RL1+r_pi2); // Ib2/Ic1
Ic1_Ib1=-bta; // Ic1/Ib1
Ib1_Ii=RB1/(RB1+r_pi1); // Ib1/Ii

AV=AV1*AV2; // Overall voltage gain
AI=Io_Ic2*Ic2_Ib2*Ib2_Ic1*Ic1_Ib1*Ib1_Ii; // Overall current gain
Ri=RB1*r_pi1/(RB1+r_pi1); // Input impedance in kilo-ohms
Ro=RC2*RL/(RC2+RL); // Output impedance in kilo-ohms
disp(AV,"Overall voltage gain =");
disp(AI,"Overall current gain =");
disp(Ri,"Imput impedance (kΩ) =");
disp(Ro,"Output impedance (kΩ) =");