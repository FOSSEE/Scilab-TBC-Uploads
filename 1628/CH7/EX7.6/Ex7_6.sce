

                     // Example  7.6

i=1;                    // Current in A Coil
R=3;                    // R of Coil 
L=0.1*10^-3;            // Inductance of Coil
di=10000;               // Decrease in Current 
dt=1;                   // time Required to Decrease Current
V=(i*R)+L*(di/dt);      // Formula Of Potential Diffrence
disp(' Potential Diffrence Across the Terminal is = '+string(V)+' Volt');




     // p 230     7.6