// Scilab code Ex6.9: Pg 213 (2008)
clc; clear;
// Case_I: Square_wave
ff = 1.11;  //  Form factor of calibrated meter
ff_square = 1;  // Form factor for square wave
V_apparent = 5;     // Meter reading for sqaure wave, volt
V_true = V_apparent*1*(ff_square/ff);    // True rms value of square wave voltage, volt
printf("\nThe true rms value of square wave voltage = %5.3f V", V_true);

// Case_II: Triangular_wave
ff_triangle = 1.15;  // Form factor for triangular wave
V_apparent = 5;     // Meter reading for triangular wave, volt
V_true = V_apparent*(ff_triangle/ff);    // True rms value of triangular wave voltage, volt
printf("\nThe true rms value of triangular wave voltage = %4.2f V", V_true);

// Result
// The true rms value of square wave voltage = 4.505 V
// The true rms value of triangular wave voltage = 5.18 V 
