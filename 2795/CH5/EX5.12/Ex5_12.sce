// Scilab Code Ex5.12 : Page-190 (2014)
clc; clear;
c = 3e+8;    // Speed of light, m/s
dt = 1e-08;    // Relaxation time of atom, s
h = 6.6e-34;    // Planck's constant, Js
dE = h/(4*%pi*dt);    // Energy width of excited state of atom, J
lambda = 300e-009;    // Wavelegth of emitted photon, m
f = c/lambda;    // Frequency of emitted photon, per sec
printf("\nThe energy width of excited state of the atom = %3.1e eV", dE/1.6e-019);
df = dE/h;    // Uncertainty in frequency, per sec
printf("\nThe uncertainty ratio of the frequency = %1.0e",  df/f);

// Result
// The energy width of excited state of the atom = 3.3e-008 eV
// The uncertainty ratio of the frequency = 8e-009 



