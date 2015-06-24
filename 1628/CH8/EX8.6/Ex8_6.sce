


                             // Examle 8.6

Vo=3;                   // Supply voltage
vo=0;                   // Voltage at V(o+)  {Because instantly capacitor can't charge }
disp(' Voltage across capacitor at V(o+) = '+string(vo)+' Volt');

R=1500;                 // Resistance
Io=Vo/R;                // Current of capacitor
io=Io;                  // Current of capacitor at i(o+)
disp(' Current across capacitor at i(o+) = '+string(io)+' Amp');

C=5*10^-6;              // Capacitor
t=R*C;                  // Time constant
disp(' Time constant = '+string(t)+' Second');

t1=15*10^-3;            // Time instant        ==> { v=Vo*(1-e-(t1/t)) }
v=Vo*(1-0.135);         // Voltage at Time t1      { e-(t1/t)=0.135 }
disp(' Voltage across capacitor at ( t=15 mS ) = '+string(v)+' Volt');

i=Io*0.135;            // Current at Time t1    ==> { i=Io*e-(t1/t) }
disp(' Current of capacitor at ( t=15 mS ) = '+string(i)+' Amp');






                       //  p 284       8.6
