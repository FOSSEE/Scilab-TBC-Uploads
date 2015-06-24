
                    // Example  11.3


V=0.85;                     // Supply Voltage
f=175*10^3;                 // Frequency
C=320*10^-12;               // Capacitance

L=1/(4*3.14^2*f^2*C);       // Inductance
disp('Inductance is = '+string(L*10^3)+' mH');

Xl=2*3.14*f*L;              // Indctive reactance
Q=50;                       // Q-Factor
R=Xl/Q;                     // Resistance

I=V/R;                      // circuit current 
disp(' Circuit current is = '+string(I*1000)+' mA');

Vc=Q*V;                     // Voltage across Capacitor
disp(' Voltage across Capacitor = '+string(Vc)+' Volt');




       //    p379     11.3

