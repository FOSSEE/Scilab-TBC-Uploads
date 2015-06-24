

                // Examle 16.5

V=440;               // Supply Voltage
Rsh=110;             // Resistance of Shunt field
Ish=V/Rsh;           // Current through Shunt field
Ra=0.02;             // Resistance of Armature winding
Il=496;              // Generator current
Ia=Il+Ish;           // Armeture Current (Ia)
disp('Armeture Current (Ia) = '+string(Ia)+' Amp');

Eg=V+(Ia*Ra);        // generated emf (Eg)
disp('Generated emf (Eg) = '+string(Eg)+' Volt');



                //        p 638    16.5