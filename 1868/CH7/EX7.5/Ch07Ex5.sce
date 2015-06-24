// Scilab code Ex7.5: Pg 241 (2005)
clc; clear;
epsilon_c = 5.5e+10;    // Characteristic field strength, V/m
epsilon = 1.0e+09;    // Electric field, V/m
f = 1.0e+30;     // Collision frequency, s(-1)cm(-2)
lamda = f*exp(-epsilon_c/epsilon);   // Electron emission rate, electrons/sec
e = 1.60e-19;    // Electrc charge, C
I = lamda*e;    // Tunelling current, A
printf("\nTunelling current in parallel plate capacitor = %4.2f pA", I/1e-12);
printf("\n");

// Result
// Tunelling current in parallel plate capacitor = 0.21 pA
