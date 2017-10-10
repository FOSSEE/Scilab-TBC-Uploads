// Exa 7.5

clc;
clear;

// Given data

// A wide-band pass filter
fL=400; // Lower cutoff frequency(Hz)
fH=2000; // Higher cutoff frequency(Hz)
A0=4; // passband gain

// Solution

printf('Since, the pass band gain is 4. so each of LPF and HPF section may be designed to give gain of 2,\n that is Ao=1+ (Rf/Ri) = 2.\n So, Rf and Ri should be equal. \n Let Rf=Ri=10 kΩ for each of LPF and HPF sections.');

disp("");
disp("");
disp("For HPF, fL=400 Hz.");
printf(' Assume C2=0.01 μF. ');
C2=0.01*10^-6; // Farads
// Since fL= 1/(2*%pi*R2*C2);
// Therefore
R2= 1/(2*%pi*C2*fL);
printf(' \n The calculated value of R = %.1f kΩ.',int(R2)/1000);

disp("");
disp("");
disp("For LPF, fH=2000 Hz.");
printf(' Assume C1=0.01 μF.');
C1=0.01*10^-6; // Farads
// Since fH= 1/(2*%pi*R1*C1);
// Therefore
R1= 1/(2*%pi*C1*fH);
printf(' \n The calculated value of R = %.2f kΩ.',R1/1000);

disp("");
disp("");

fo=sqrt(fL*fH);
Q=fo/(fH-fL);

printf(' The value of cutoff frequency = %.1f Hz.\n ',fo);
printf('\n The quality factor = %.2f (<10) since wide passband filter.',Q);
