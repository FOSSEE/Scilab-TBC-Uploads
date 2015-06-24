

                     // Example  10.3

R=120;                     // Resistance
Xc=250;                    // Capacitve Reactance
Q=-64.4;                   // Phase Angle 
I=0.9+%i*0;                // Current
Z=R-%i*Xc;                 // Impedance
disp(' The Impedance is = '+string(Z)+'   or  ('+string(abs(Z))+' <'+string(atand(imag(Z),real(Z)))+' Amp )');

pf=cosd(Q);               // Power Fector
disp(' Power Factor = '+string(pf)+' Leading');

V=I*Z;                    // Supply Voltage
disp(' Supply Voltage = '+string(V)+'  or  ('+string(abs(V))+' <'+string(atand(imag(V),real(V)))+' Amp )');
v=249.6;                  // Peak value of Voltage

Vr=I*R;                   // Voltage at Resistor
disp(' Voltage across Resistor = '+string(Vr)+' Volt');

Vc=I*Xc;                  // Voltage across Capacitor
disp(' Voltage across Capacitor = '+string(Vc)+'  or  ('+string(abs(Vc))+' < -90 Amp )');
Pa=v*I;                   // Apparent power
disp(' Apparent value of Power = '+string(Pa)+' VA');

Pac=v*I*cosd(Q);          // Active Power 
disp(' Active Power = '+string(Pac)+' Watt');

Pr=v*I*sind(Q);           // Reactive Power
disp(' Reactive Power = '+string(-Pr)+' VAR');



       //  p 345       10.3