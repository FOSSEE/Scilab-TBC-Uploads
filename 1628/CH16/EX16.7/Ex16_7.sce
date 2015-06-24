
                // Examle 16.7

Il=100;                  // Series field current
Rse=0.1;                 // Resistance series field
Vse=Rse*Il;              // Voltage drop across series field (Vse)
disp('Voltage drop across series field (Vse) = '+string(Vse)+' Volt');

V=250;                   // Supply voltage
Vsh=V+Vse;               // Voltage drop across Shunt field (Vsh)
disp('Voltage drop across Shunt field (Vsh) = '+string(Vsh)+' Volt');

Rsh=130;                 // Resistance
Ish=Vsh/Rsh;             // Shunt field Current (Ish)
disp(' Shunt field Current (Ish) = '+string(Ish)+' Amp');

Ia=Il+Ish;               // Armature Current (Ia)
disp('Armature Current (Ia) = '+string(Ia)+' Amp');

Ra=0.1;                  // Armature resistance
dro=2;                   // Brush-drop
Eg=V+Vse+(Ia*Ra)+dro;    // Generated emf (Eg)
disp('Generated emf (Eg) = '+string(Eg)+' Volt');



         // p 638    16.7

