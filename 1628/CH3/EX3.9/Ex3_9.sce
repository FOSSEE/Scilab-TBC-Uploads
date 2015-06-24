

                             // Examle 3.9

Is=3;                     // Source current
Rs=2;                     // Source resistance
Vs=Rs*Is;                 // Source voltage
Rl=4;                     // Load resistance
R=(Rs*Rl)/(Rs+Rl);        // Eqviualent resistance
Il1=(Is*Rs)/(Rs+Rl);      // Load current in case-1
disp(' Load current in case-1 = '+string(Il1)+' Amp');

Vl1=1*Rl;                 // Load voltage in case-1
disp(' Load voltage in case-1 = '+string(Vl1)+' Volt');

Ps1=Is^2*R;               // Power delivered in case-1
disp(' Power delivered in case-1 = '+string(Ps1)+' Watt');

Il2=Vs/(Rs+Rl);           // Load current in case-2
disp(' Load current in case-2 = '+string(Il2)+' Amp');

Vl2=Vs*(Rl/(Rl+Rs));      // Load voltage in case-2
disp(' Load voltage in case-2 = '+string(Vl2)+' Volt');

Ps2=Vs^2/(Rs+Rl);         // Power delivered in case-2
disp(' Power delivered in case-2 = '+string(Ps2)+' Watt');




                  //       p 61        3.9

