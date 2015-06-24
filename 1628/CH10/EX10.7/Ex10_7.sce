

                     // Example  10.7

L=0.15;                       // Inductance
w=100*%pi;                    // Angular Frequancy
C=100*10^-6;                  // Capacitance
R=12;                         // Resistance
V=100;                        // Voltage
Xl=w*L;                       // Indctive reactance
Xc=1/(w*C);                   // capacitive reactance
Z=R+%i*(Xl-Xc);               // Impedance
disp(' The Value of Impedance is = '+string(Z)+'  or  ('+string(abs(Z))+' <'+string(atand(imag(Z),real(Z)))+' Amp )');
r=12;                         // peak Value of impedance

I=V/Z;                        // Current
disp(' The Value of Current is = '+string(I)+'  or  ('+string(abs(I))+' <'+string(atand(imag(I),real(I)))+' Amp )');
i=5.15;                       // peak Value of Current

Q=atand(15.3/12);             // Phase Angle
disp(' Phase Angle = '+string(-Q)+' Didree');

Vr=i*r;                       // Voltage at Vr
disp(' Voltage at Vr = '+string(Vr)+' Volt');

Vc=i*Xc;                      // Voltage at Vc
disp(' Voltage at Vc = '+string(Vc)+' Volt');

Vl=i*Xl;                      //Voltage at Vl
disp(' Voltage at Vl = '+string(Vl)+' Volt');

pf=cosd(Q);                   // Power Fector
disp(' Power Factor = '+string(pf)+' Lagging');

Pa=V*i;                       // Apparent power
disp(' Apparent value of Power = '+string(Pa)+' VA');

Pav=V*i*pf;                  // Average Value of power
disp(' Average value of Power = '+string(Pav)+' Watt');




        // p 349    10.7

