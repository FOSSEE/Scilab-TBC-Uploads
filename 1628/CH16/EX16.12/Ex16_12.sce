

                // Examle 16.12

V=440;                     // Supply voltage
Ia=50;                     // Armature currernt
Ra=0.28;                   // Armature resistance
a=2;                       // No.Of paraller path
Q=0.023;                   // Megnetic flux per pole
z=888;                     // Impedence
p=4;                       // No.Of poles
Eb=V-(Ia*Ra);              // Back emf (Eb)
disp(' Back emf (Eb) = '+string(Eb)+' Volt');

N=(60*a*Eb)/(Q*z*p);       // Speed of the moter
disp(' Speed of the moter = '+string(round(N))+' rms');




          //  p 649       16.12