
                    // Example  11.2

L=0.5;                     // Inductance
V=100;                     // Supply Voltage
R=4;                       // Resistance
f=50;                      // Frequency
C=1/(4*%pi^2*f^2*L);       // Capacitance
disp('Capacitance is = '+string(C*10^6)+' uF');

I=V/R;                     // Current at Resonance Frequency 
disp(' Current at Resonance Frequency = '+string(I)+' Amp');

wo=2*%pi*f;                // Angular Frequency
Xl=157;                    // Indctive Reactance
Vc=I*Xl;                   // Voltage across Capacitor
disp(' Voltage across Capacitor = '+string(Vc)+' Volt');

Vl=Vc;                     // Voltage across Inductance
disp(' Voltage across Inductance = '+string(Vl)+' Volt');


Q=(wo*L)/R;                // Q-Factor
disp(' Q-Factor is  = '+string(Q));





          //   p 378      11.2





