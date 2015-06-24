

                    // Example  11.5

R1=0.51;                     // Resistance-1
R2=1.3;                      // Resistance-2
R3=0.24;                     // Resistance-3
Req=R1+R2+R3;                // Eqviualent Resistance
L1=32*10^-3;                 // Inductance-1
L2=15*10^-3;                 // Inductance-2
Leq=L1+L2;                   // Eqviualent Inductance
C1=62*10^-6;                 // Capacitance-1
C2=25*10^-6;                 // Capacitance-2
Ceq=(C1*C2)/(C1+C2);         // Eqviualent Capacitance

fo=1/(2*%pi*sqrt(Leq*Ceq));        // Resonance Frequency
disp(' Resonance Frequency is = '+string(round(fo))+' Hz');

Q=(1/Req)*sqrt(Leq/Ceq);           // Over all Q-Factor
disp(' Over all Q-Factor is  = '+string(round(Q)));

wo=2*%pi*fo;
Q1=(wo*L1)/R1;                    // Q-Factor of Coil-1
disp(' Q-Factor of Coil-1 is  = '+string(Q1));

Q2=(wo*L2)/R2;                   // Q-Factor of Coil-2
disp(' Q-Factor of Coil-2 is  = '+string(Q2));




                 // p 380     11.5 


