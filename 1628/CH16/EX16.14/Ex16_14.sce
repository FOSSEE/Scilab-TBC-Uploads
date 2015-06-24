
                // Examle 16.14

V=480;
Ia=110;                  // Armature currernt
Ra=0.2;                  // Armature resistance
a=6;                     // No.Of paraller path
p=6;                     // No.Of poles
Q=0.05;                  // Megnetic flux per pole
z=864;                   // Impedence
Eb=V-(Ia*Ra);            // Generated emf (Eb)
disp('Generated emf (Eb) = '+string(Eb)+' Volt');

N=(60*a*Eb)/(Q*z*p);      // Speed of the moter
disp(' Speed of the moter = '+string(round(N))+' rms');

        //  ==> Using Formula { td= Qz/2TT x(p/A) xIa }

x=(Q*z)/(2*%pi);         // for simlicity  
td=(p/a)*Ia*(x);         // Total Torque (Td)
disp(' Total Torque (Td) = '+string (round(td))+' Nm');





           //  p 650       16.14