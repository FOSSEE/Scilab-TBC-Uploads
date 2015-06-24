

                    // Example  13.1

E=6400;                            // Supply Voltage
f=50;                              // Frequency
N1=480;                            // No.Of turns in Primary Coil 
N2=20;                             // No.Of turns in Secondary Coil

Qm=E/(4.44*f*N1);                  // The Peak Value of Flux
disp(' The Peak Value of Flux = '+string(Qm)+' Wb');

E1=4.44*f*N2*Qm;                   // Voltage induced in Secondary winding
disp(' Voltage induced in Secondary winding = '+string(E1)+' Volt');






         // p 487        13.1
