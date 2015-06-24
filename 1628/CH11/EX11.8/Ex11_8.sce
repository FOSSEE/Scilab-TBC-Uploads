

                     // Example  11.8

L=0.24;                   // Inductance
C=3*10^-6;                // Capacitance
R=150;                    // Resistance
f=1/(2*%pi*sqrt(L*C));    // Frequency
fo=f*sqrt(1-R^2*(C/L));   // Resonance Frequency
disp(' Resonance Frequency = '+string(fo)+' Hz');

Xl=2*%pi*fo*L;            // Indctive reactance
Q=Xl/R;                   // Q-Factor
disp(' Q-Factor is  = '+string(Q));

Bw=fo/Q;                 // Band width
disp(' Band width is = '+string(Bw)+' Hz');




        // p 387    11.8



