

                      // Example  2.17

R1=126;       // Resistance of 126 Ohms
T1=20;        // temperature at 126 ohms resistor
T2=-35;       // Temperature ( -35 Digree)
ao=0.00426;
              // By using Temprerature Formula i.e  R1/(1+aoT1) =R2/(1+aoT2)
z=(1+ao*T2)/(1+ao*T1);
R2=R1*z;
disp(' Resistance of the line (at T=-35) = '+string(R2)+' Ohm');





       // p 31       2.17
