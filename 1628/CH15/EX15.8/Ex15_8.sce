

                             // Examle 15.8

f=50;                 // Frequency
p=6;                  // No.Of poles
Ns=(120*f)/p;         // Synchronous speed 
N=940;               // No.Of Revolution in rmp

s=(Ns-N)/Ns;          // The Slip
disp(' The Slip is = '+string(s));

R2=0.1;              // Rotor resistance per phase
X20=R2/s;            // Standing rotor reactance
disp(' Standing rotor reactance = '+string(X20)+' Ohm');





          //   p 608       15.8


