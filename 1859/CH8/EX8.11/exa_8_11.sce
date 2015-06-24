// Exa 8.11
clc;
clear;
close;
// Given data
// Taking 1div= 1 cm for CRO wave displays
Mark= 0.4;// cm
Space= 1.6;// cm
SAC= 0.2;// signal amplitude control in V/div
TBS= 10;// time base control in micro/div
Amplitude= 2.15;// in cm
M_S_ratio= Mark/Space;// Mark to Space raio 
disp(M_S_ratio,"Mark to Space raio ")
T= (Mark+Space)*TBS;// in micro sec
T=T*10^-6;// in sec
f=1/T;// in Hz
disp(f*10^-3,"Pulse frequency in kHz")
Mag= Amplitude*SAC;// Magnitude of pulse voltage in volt
disp(Mag,"Magnitude of pulse voltage in volt")
