// Example 11.7: Low frequency gain, Upper 3 dB frequency
clc, clear
// Without feedback
AM=1e4; // Low frequency values of A
wH=100; // Upper 3 dB frequency in hertz
// With feedback
R1=1; // in kilo-ohms
R2=9; // in kilo-ohms
bta=R1/(R1+R2); // Feedback factor
AfM=AM/(1+bta*AM); // Low frequency gain
wHf=wH*(1+bta*AM); // Upper 3 dB frequency in hertz
wHf=wHf*1e-3; // Upper 3 dB frequency in kilo-hertz
disp("For closed loop amplifier :");
disp(AfM,"Low frequency gain =");
disp(wHf,"Upper 3 dB frequency (kHz) =");