

                 // Examle 15.1

p=6;                      // No.Of poles
f=50;                     // Frequency
Ns=(120*f)/p;             // Synchronous speed
disp('(a) The Synchronous Speed (Ns) = '+string(Ns)+' rpm');

s1=0.01;                  // Slip (s=1 %)
N1=Ns*(1-s1);             // he No Load Speed (N)
disp('(b) The No Load Speed (N) = '+string(N1)+' rpm');

s2=0.03;                  // Slip (s=3 %)
N2=Ns*(1-s2);             // The Full Load Speed 
disp('(c) The Full Load Speed (N) = '+string(N2)+' rpm');

s=1;                      // Slip (s=100 %)
fr1=s*f;                  // The Frequence of Rotor (at s=1 )
disp('(d) The Frequence of Rotor (at s=1 ) = '+string(fr1)+' Hz');

fr2=s2*f;                 // The Frequence of Rotor (at s=0.03 )
disp('(e) The Frequence of Rotor (at s=0.03 ) = '+string(fr2)+' Hz');




        // p 593     15.1
