// Exmaple 9.1: Overall voltage gain, Overall current gain
clc, clear
bta=100;
r_pi=0.5; // in kilo-ohms
// From Fig. 9.4
Rs=2; // in kilo-ohms
RC=2; // in kilo-ohms
RE=5; // in kilo-ohms
// As the first stage ia a CE amplifier stage
AV1=-bta*RC/(Rs+r_pi); // Voltage gain of first amplifier
// The second stage is a CC amplifier
AV2=(1+bta)*RE/(Rs+r_pi+(1+bta)*RE); // Voltage gain of second amplifier
AV=AV1*AV2; // Overall voltage gain
AI=Rs*AV/RE; // Overall current gain
disp(AV,"Overall voltage gain =");
disp(AI,"Overall current gain =");