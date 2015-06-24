
                // Examle 16.6

p=60;                 // Power supply 
v=200;                // supply voltage
I1=p/v;               // current through each lamp
Il=100*I1;            // Shunt field Current (Il)
disp('Shunt field Current (Il) = '+string(Il)+' Amp');

Rsh=50;               // Resistance
Ish=v/Rsh;            // Shunt field Current
Ia=Il+Ish;            // Armature Current (Ia)
disp('Armature Current (Ia) = '+string(Ia)+' Amp');

a=4;                  // No.Of paraller path
Ic=Ia/a;              // Current per path (Ic)
disp(' Current per path (Ic) = '+string(Ic)+' Amp');

Ra=0.2;               // Armature resistance
dro=2;                // Brush-drop
Eg=v+(Ia*Ra)+dro;     // Generated emf (Eg)
disp('generated emf (Eg) = '+string(Eg)+' Volt');



         // 638    16.6

