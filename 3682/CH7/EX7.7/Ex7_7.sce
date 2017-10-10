// Exa 7.7

clc;
clear;

// Given data
fH= 400; // Higher cutoff frequency(Hz)
fL=2000; // lower cutoff frequency(Hz)
Ao=2;  // Pass band gain

// Solution

disp("For HPF, fL=2 kHz.");
disp("Assume C2=0.1 μF. ");
C2=0.1*10^-6; // Farads
// Since fL= 1/(2*%pi*R*C2);
// Therefore
RL= 1/(2*%pi*C2*fL);
printf(' The calculated value of R = %d Ω.',int(RL));
printf('\n Let R = 800 Ω.');
// Since Ao=Ao2 = 1+ (Rf/Ri);  
disp("Let Rf = Ri =10 kΩ(say) to give A02 of 2.");
disp("");
disp("");
disp("For LPF, fL=400 Hz.");
disp("Assume C1=0.1 μF. ");
C1=0.1*10^-6; // Farads
// Since fH= 1/(2*%pi*R*C1);
// Therefore
RF= 1/(2*%pi*C1*fH);
printf(' The calculated value of R = %d Ω.',int(RF));
printf('\n Let R = 4 kΩ.');..
// Since Ao=Ao1 = 1+ (Rf/Ri);  
disp("Let Rf = Ri =10 kΩ(say) to give A01 of 2.");

disp("");
disp("");

disp("The schematic arrangement and the frequency response is shown in figs. 7.16(a,b) on page no. 280.")
