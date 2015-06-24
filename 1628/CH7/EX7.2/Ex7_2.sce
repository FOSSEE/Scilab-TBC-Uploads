


                     // Example  7.2

N=150;                // turns of Coil
Q=0.01;               // Flux of Coil 
I=10;                 // Current in Coil 
L=N*(Q/I);            // Induction of a Coil 
di=10-(-10);          // Decrease in Current 
dt=0.01;              // time Required to Decrease Current
e=L*(di/dt);          // Formula of Self induction
disp(' Induction of a Coil = '+string(L)+' H');
disp(' emf induced in a Coil is = '+string(e)+' Volt');



       //  p 228     7.2
