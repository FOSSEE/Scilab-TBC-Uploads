// Scilab code Ex14.10 : Pg:724(2011)
clc;clear;
R_L = 980; // Load resistance across FWR, ohm
R_F = 20;   // Internal resistance of two crystal diodes in FWR, ohm
V_rms = 50;    // Rms value of voltage supply, V
V0 = sqrt(2)*V_rms; // Peak value of voltage, V
I0 = V0/((R_L+R_F)*1e-03);    // Peak value of current, mA
I_dc = 2*I0/%pi;  // Average value of current, mA
I_rms = I0/sqrt(2);   // Rms value of current, mA
V_dc = I_dc*R_L/1e+03;    // Dc output voltage, V
eta = 81.2/(1+R_F/R_L);     // Rectification efficiency
PIV = 2*V0;   // Peak inverse voltage, V
printf("\nThe average value of current = %2d mA", I_dc);
printf("\nThe rms value of current = %2d mA", I_rms);
printf("\nThe dc output voltage = %4.1f V", V_dc/1);
printf("\nThe rectification efficiency = %4.1f percent", eta);
printf("\nPIV = %5.1f V", PIV);


// Result
// The average value of current = 45 mA
// The rms value of current = 50 mA
// The dc output voltage = 44.1 V
// The rectification efficiency = 79.6 percent
// PIV = 141.4 V 
