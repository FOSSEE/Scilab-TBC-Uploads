// Scilab code Ex14.9 : Pg:723(2011)
clc;clear;
R_L = 1000; // Load resistance across HWR, ohm
V_rms = 200;    // Rms value of voltage supply, V
V0 = sqrt(2)*V_rms; // Peak value of voltage, V
I0 = V0/(R_L*1e-03);    // Peak value of current, mA
I_dc = I0/%pi;  // Average value of current, mA
I_rms = I0/2;   // Rms value of current, mA
V_dc = I_dc*R_L/1e+03;    // Dc output voltage, V
PIV = V0;   // Peak inverse voltage, V
printf("\nThe average value of current = %2d mA", I_dc);
printf("\nThe rms value of current = %5.1f mA", I_rms);
printf("\nThe dc output voltage = %2d V", V_dc/1);
printf("\nPIV = %5.1f V", PIV);


// Result
// The average value of current = 90 mA
// The rms value of current = 141.4 mA
// The dc output voltage = 90 V
// PIV = 282.8 V 
