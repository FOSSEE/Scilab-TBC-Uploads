

                 // Examle 15.3

p=6;                      // No.Of poles
f=50;                     // Frequency
Ns=(120*f)/p;             // Synchronous speed
disp(' The Synchronous Speed (Ns) = '+string(Ns)+' rpm');

fr=2;                     // Frequency of rotor at full-load
s=fr/f;                   // Slip at full-load
disp(' the Full Load Slip (s) = '+string(s*100)+' %');

N=Ns*(1-s);               // The Speed of Rotor (fr)
disp(' The Speed of Rotor (fr) = '+string(N)+' rpm');




               //   p 594   15.3
