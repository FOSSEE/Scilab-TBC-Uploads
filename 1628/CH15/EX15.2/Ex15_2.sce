
                 // Examle 15.2

p=12;                     // No.Of poles
f=50;                     // Frequency
Ns=(120*f)/p;             // Synchronous speed
disp(' The Synchronous Speed (Ns) = '+string(Ns)+' rpm');

N=485;                    // Speed of Motor
s=(Ns-N)/Ns;              // Slip
fr=s*f;                   // The Frequence of Rotor (fr)
disp(' The Frequence of Rotor (fr) = '+string(fr)+' Hz');




            //  p 593    15.2
