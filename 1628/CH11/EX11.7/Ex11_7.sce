
                     // Example  11.7

V=230;                         // Supply Voltage
L=200*10^-6;                   // Inductance
R=20;                          // Resistance
f=1*10^6;                      // Frequency
Xl=2*%pi*f*L;                  // Indctive reactance
C=1/(4*%pi^2*f^2*L);           // Capacitance
disp(' Required Capacitance = '+string(C*10^12)+' pF');

Q=Xl/R;                        // Q-Factor
disp(' Q-Factor is  = '+string(Q));

Zo=L/(C*R);                    // dynamic Impedance
disp(' Dynamic Impedance is = '+string(Zo)+' Ohm');
Zs=8000;                       // Soures Resistance
Z=Zo+Zs;                       // Total Resistance

I=V/Z;                         // Total Line Current 
disp(' Total Line Current is = '+string(I*1000)+' mA');



                 //   p 388           11.7
