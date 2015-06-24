

                     // Example  10.4

                      // Given V= 160+i120 & I= -4+i10
Vi= 160+%i*120;       // Sinusoidal Voltage  i.e  200<36.87
Ii= -4+%i*10;         // Sinusoidal Current   i.e  10.77<111.8 
Z=Vi/Ii;                // Impedance
Q=-74.93;             // Phase Angle 
V=200;                // peak Value of Voltage 
I=10.77;              // peak Value of Current
disp(' Impedance = '+string(Z)+' Ohms');

pf=cosd(Q);           // Power Fector
disp(' Power Factor = '+string(pf)+' Leading');
disp(' the Circuit is Capacitive , Becuase Imaginary part of impedance is negative .');

Pa=V*I*cosd(Q);       // Active Power 
disp(' Active Power = '+string(Pa)+' Watt');

Pr=V*I*sind(Q);       // Reactive Power
disp(' Reactive Power = '+string(-Pr)+' VAR');





        //   p 348     10.4

