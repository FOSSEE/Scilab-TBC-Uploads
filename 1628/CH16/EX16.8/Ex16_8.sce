
                // Examle 16.8

po=30000;          // o/p power
v=200;             // Voltage 
Il=po/v;           // Load Current (Il)
disp(' Load Current (Il) = '+string(Il)+' Amp');

Rsh=50;                      // Shunt field resistance R1
Ish=v/Rsh;                   // Shunt field Current
Ia=Il+Ish;                   // Armature Current (Ia)
Ra=0.05;                     // Shunt field resistance R2
Eg=v+(Ia*Ra);                // Generated emf (Eg)
disp('Generated emf (Eg) = '+string(Eg)+' Volt');

Cu=Ish^2*Rsh+Ia^2*Ra;        // The copper Losses (Cu)
disp('The copper Losses (Cu) = '+string(Cu)+' W');

e=po*100/(1000+po+Cu);       // The Efficiency (e)
disp('The Efficiency (e) = '+string (e)+' %');



             // p 641     16.8
