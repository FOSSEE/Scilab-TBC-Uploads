// Exa 2.6

clc;
clear;

// Given data

// Referring circuit shown in Fig. 2.11(a)
B=200; // Current gain
Icq = 100*10^-6; // Amperes
ADM = 500; // Voltage gain for differential mode signal
CMRR_db = 80; // in dB(Common mode rejection ratio)

// Solution

// Since gm = Icq/Vt therefore,
gm = Icq/(25*10^-3); // for Vt = 25 mV

printf('Using Eq. 2.50, we have ADM = -gm*Rc so from this we get Rc as ');
Rc =abs(- ADM/gm);
printf(' %d kΩ. \n ',Rc/1000);
printf('Since CMRR = 80 dB converting it into non dB value so CMRR = ');
CMRR =  10^(CMRR_db/20);
printf(' %d. \n ',CMRR);
printf('Using Eq. 2.55, we get value of Re as ');
// CMRR = 1+ 2*gm*Re; therefore
Re = (CMRR-1)/(2*gm);
printf(' %.2f MΩ. \n ',Re/10^6);
