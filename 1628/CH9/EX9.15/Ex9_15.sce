
                     // Example  9.15

                    // Given v= 55 Sin(wt)V   &  i= 6.1Sin(wt-pi/5)A 
Q=%pi/5;                     // Phase Angle
Vm=55;                       // Peak Value of Voltage
Im=6.1;                      // Peak Value of Current
V=Vm/sqrt(2);                // Rms value of Voltage
I=Im/sqrt(2);                // Rms value of Current

Pav=V*I*cos(Q);              // Average Value of power
disp(' Average value of Power = '+string(Pav)+' Watt');

Pa=V*I;                      // Apparent Value of power
disp(' Apparent value of Power = '+string(Pa)+' VA');

P=Pav-(V*I*cos(0.6-Q));      // Instant Power at (wt= 0.3)
disp(' Instant Power at (wt= 0.3) = '+string(P)+' VA');

pf=cos(Q);                   // Power Factor
disp(' Power Factor = '+string(pf*100)+' %');



       // p 323    9.15 

