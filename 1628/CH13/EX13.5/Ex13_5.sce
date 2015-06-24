
                   // Example  13.5

f=50;                              // Frequency
N1=30;                             // No.Of turns in Primary Coil 
N2=66;                             // No.Of turns in Secondary Coil
A=0.015;                           // Area of the Core
Zl=4;                              // Load Impedance
Bm=1.1;                            // The Peak Value of Flux Density
Qm=Bm*A;                           // The Peak Value of Flux

V2=4.44*f*N2*Qm;                   // O/P Voltage
I2=V2/Zl;                          // O/P current
Ova=V2*I2;                         // Output Volt-Amperes
disp(' Output Volt-Amperes is = '+string(Ova/1000)+' kVA');





             //  p 491      13.5