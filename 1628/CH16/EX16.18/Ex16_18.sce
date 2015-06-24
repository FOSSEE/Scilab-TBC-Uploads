
                    // Examle 16.18

V=480;                      // Supply voltage
Ia=110;                     // Armature currernt
Ra=0.18;                    // Series field resistance R1
Rse=0.02;                   // Series field resistance R2
Eb=V-Ia*(Ra+Rse);           // Generated emf
disp(' Generated emf = '+string(Eb)+' Voltage');

a=6;                        // No.Of paraller path
Q=0.05;                     // Megnetic flux
z=864;                      // Conductor
p=6;                        // No.Of poles
N=(60*a*Eb)/(Q*z*p);        // Speed of a Motor
disp(' Speed of a Motor = '+string(round(N))+' rpm');

Td=(60*Eb*Ia)/(2*%pi*N);    // The Torque Develop by Armeture
disp(' The Torque Develop by Armeture = '+string(round(Td))+' Nm');


 
                //  p 654   16.18
