// Example 11.4: Closed loop parameters
clc, clear
Av=1000;
bta=0.01;
Zin=1; // in kilo-ohms
Zo=420; // in ohms
fL=1.5; // in kilo-hertz
fH=501.5; // in kilo-hertz
disp("Closed loop parameters :");
T=Av*bta; // Return ratio
// From Fig. 11.18
Af=Av/(1+T); // Closed loop gain
Zif=Zin*(1+T); // Closed loop input impedance in kilo-ohms
Zof=Zo/(1+T); // Closed loop output impedance in ohms
fLf=fL/(1+T); // Closed loop lower 3 dB frequency in kilo-hertz
fHf=fH*(1+T); // Closed loop upper 3 dB frequency in kilo-hertz
disp(Af,"Gain =");
disp(Zif,"Input impedance (kΩ) =");
disp(Zof,"Output impedance (Ω) =");
disp(fLf,"Lower 3 dB frequency (kHz) =");
disp(fHf,"Upper 3 dB frequency (kHz) =");