

                     // Example  10.2

P=750;                 // Rated  Power
V=230;                 // Supply Voltage
f=50;                  // Frequency
Vr=100                 // Rated Voltage 
I=P/Vr;                // Rated Current
Vc=sqrt(V^2-Vr^2);     // Voltage across Capacitor
Xc=Vc/I;               // Capacitve Reactance
C=1/(2*%pi*f*Xc);      // Capacitance
disp(' Required Capacitance = '+string(C)+' F');

Q=acosd(Vr/V);          // Phase Angle
disp(' Phase Angle = '+string(Q)+' Didree');

pf=cosd(Q);             // Power Fector
disp(' Power Factor = '+string(pf)+' Leading');

Pa=V*I;                 // Apparent power
disp(' Apparent value of Power = '+string(Pa)+' VA');

Pr=V*I*sind(Q);         // Reactive Power
disp(' Reactive Power = '+string(round(Pr))+' VAR');



       // p 344    10.2




