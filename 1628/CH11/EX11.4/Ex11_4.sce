
                     // Example  11.4

L=1*10^-3;                 // Inductance
V=120;                     // Supply Voltage
R=2;                       // Resistance
f=5*10^3;                  // Frequency
C=1/(4*%pi^2*f^2*L);       // Capacitance
disp('Capacitance is = '+string(C*10^9)+' nF');

I=V/R;                     // Current at Resonance Frequency 
disp(' Current at Resonance Frequency = '+string(I)+' Amp');

Emax=L*I^2;                // Maximum Instantaneous Energy
disp(' The Maximum Instantaneous Energy = '+string(Emax)+' J');





        //    p 379        11.4




