// Scilab code Ex17.15 : Pg:896 (2011)
clc;clear;
q = 1.6e-019;    // Charge on a deuteron, C    
amu = 931.5;    // Energy equivalent of 1 amu, MeV
m0 = 2.0141;    // Rest mass of a deuteron, kg
B0 = 1.5;    // Magnetic field at the centre of the synchrocyclotron, T
B = 1.431;    // Magnetic field at the periphery of the synchrocyclotron, T  
f0 = q*B0/(2*3.14*m0*1.67e-027*1e+06);    // Maximum frequency of Dee voltage of synhrocyclotron, MHz
f = 1e+07;    // Minimum frequency of Dee voltage, Hz 
m = q*B/(2*3.14*f*1.67e-027);    // Mass of deuteron at the periphery of the Dee, amu
K = (m-m0)*amu;    // Gain in energy of the deuteron, MeV
printf("\nThe maximum frequency of Dee voltage = %5.2f MHz", f0);
printf("\nThe gain in energy of the deuteron = %6.2f MeV", K);

// Result
// The maximum frequency of Dee voltage = 11.36 MHz
// The gain in energy of the deuteron = 157.47 MeV  
