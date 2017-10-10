// Exa 6.2
// To calculate spectral efficiency of FDMA.

clc;
clear all;

TCH=395;  // Traffic Channels
SysBW=12.5;  //in MHz
CHspace=30;  // in kHz

//solution
Eff=TCH*CHspace/(SysBW*1000);
printf('Multiple access spectral efficiency of FDMA System is %.3f\n ',Eff);
