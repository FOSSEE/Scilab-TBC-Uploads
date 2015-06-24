// Scilab code Ex8.2: Pg 255 (2008)
clc; clear;
C = 0.5e-06;    // Value of capacitance of capacitor, farad
R1 = 220e+03;    // Value of series resistor, ohm
R2 = 110e+03;    // Value of parallel resistor, ohm
E = 150;    // Value of d.c. voltage supply, volt

// Part (a)
tau = C*R1;    // Time constant of the R1-C circuit while charging, s
printf("\nThe circuit time constant while charging = %4.2f s", tau);
I_0 = E/R1;    // Initial charging current through capacitor, A
printf("\nThe initial charging current through capacitor = %3d micro-ampere", I_0/1e-06);

// Part (b)
tau = C*(R1+R2);    // Time constant of the R1-C-R2 circuit while discharging, s
printf("\nThe circuit time constant while discharging = %4.2f s", tau);
I_0 = E/(R1 + R2);    // Initial discharging current through capacitor, ampere
i = 0.368*I_0;    // Discharge current after one time constant, ampere
V_R2 = i*R2;    // Potential difference across R2 after one time constant, volt
printf("\nThe p.d. across R2 after one time constant while discharging = %4.1f volt", V_R2);


// Result
// The circuit time constant while charging = 0.11 s
// The initial charging current through capacitor = 681 micro-ampere
// The circuit time constant while discharging = 0.16 s
// The p.d. across R2 after one time constant while discharging = 18.4 volt 
