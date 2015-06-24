

                             // Examle 8.7

Vo=3;                   // Supply voltage
vo=Vo;                  // Voltage at V(o+)
vio=Vo;                 // Voltage at V(o-)
disp(' Voltage across capacitor at V(o+) = '+string(vo)+' Volt');

R=100;                  // Resistance
Io=Vo/R;                // Current of capacitor
io=-Io;                 // Current of capacitor at i(o+)
disp(' Current across capacitor at i(o+) = '+string(io)+' Amp');

C=5*10^-6;              // Capacitor
t=R*C;                  // Time constant
disp(' Time constant = '+string(t)+' Second');

t1=1.2*10^-3;           // Time instant        ==> { v=Vo*e-(t1/t) }
v=Vo*0.0907;            // Voltage at Time t1      { e-(t1/t)=0.0907 }
disp(' Voltage across capacitor at ( t=1.2 mS ) = '+string(v)+' Volt');

i=-Io*0.0907;           // Current at Time t1  ==> { i=-Io*e-(t1/t) } 
disp(' Current of capacitor at ( t=1.2 mS ) = '+string(i)+' Amp');






                       //  p 285       8.7
