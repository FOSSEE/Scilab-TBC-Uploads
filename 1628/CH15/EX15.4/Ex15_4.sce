

                   // Examle 15.4

p=4;                       // No.Of poles
f=50;                      // Frequency
Ns=(120*f)/p;              // Synchronous speed
disp(' The Synchronous Speed (Ns) = '+string(Ns)+' rpm');

s1=0.04;                   // Slip
N1=Ns*(1-s1);              // The Speed of Rotor
disp('(b) The Speed of Rotor (at s=0.04) = '+string(N1)+' rpm');

N=600;                     // Speed Of rotation
s=(Ns-N)/Ns;               // When speed is (600 rmp) Then Slip
fr=s*f;                    // The Frequence of Rotor (fr)
disp('(d) The Frequence of Rotor (fr) = '+string(fr)+' Hz');




             //  p 594        15.4



