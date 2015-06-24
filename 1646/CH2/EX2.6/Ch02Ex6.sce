// Scilab Code Ex2.6 : Page:81 (2011)
clc;clear;
del_t = 2.5e-14;....// Lifetime of the hydrogen atom in excited state
hcut = 1.054e-34;....// Planck's constant,in J-s
e = 1.6e-19;....// Charge on electron,in C
del_E = hcut/(2*del_t*e);....// Energy of the state, in eV
printf("\nThe minimum error in measurement of lifetime of excited state of hydrogen atom = %6.4f eV",del_E); 

// Result
// The minimum error in measurement of lifetime of excited state of hydrogen atom = 0.0132 eV 
