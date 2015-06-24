
                   // Example  13.2

E1=230;                            // Supply Voltage
f=50;                              // Frequency
N1=30;                             // No.Of turns in Primary Coil 
N2=350;                            // No.Of turns in Secondary Coil
A=250*10^-4;                       // Area of the Core

Qm=E1/(4.44*f*N1);                 // The Peak Value of Flux
Bm=Qm/A;                           // The Peak Value of Flux Density
disp(' The Peak Value of Flux Density = '+string(Bm)+' Tesla');

E2=E1*(N2/N1);                     // Voltage induced in Secondary winding
disp(' Voltage induced in Secondary winding = '+string(E2/1000)+' kV');

I2=100;                            // Current in Secondary Coil
I1=I2*(N2/N1);                     // Primary Current 
disp(' Primary Current is  = '+string(I1/1000)+' kA');




       // p 490      13.2






