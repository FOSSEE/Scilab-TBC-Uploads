

                     // Examle 16.11

V=250;                 // Supply voltage
Rsh=250;               // Field winding resistance
Ish=V/Rsh;             // The shunt field current (Ish)
disp(' The Shunt field current (Ish) = '+string(Ish)+' Amp');
Il=41;                 // Full-load current 
Ia=Il-Ish;             // Armature current
disp(' The Armature current current (Ia) = '+string(Ia)+' Amp');
Ra=0.1;                // Armature resistance
Eb=V-(Ia*Ra);          // back emf
disp(' The back emf (Eb) = '+string(Eb)+' Volt');




              //   p 649      16.11