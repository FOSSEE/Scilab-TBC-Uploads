

                // Examle 16.15

t=2000;                 // Torque
N=900;                  // Speed
Ploss=8000;             // Power loss
Pin=(2*%pi*t*N)/60;     // Input Power (Pin)
disp(' Input Power (Pin) '+string(Pin/1000)+' kW');

Pd=Pin-Ploss;           // Power Generated in Armature (Pd)
disp(' Power Generated in Armature (Pd) = '+string(Pd/1000)+' kW');



            //   p 651       16.15