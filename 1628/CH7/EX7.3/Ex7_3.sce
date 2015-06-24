



                     // Example  7.3

N=100;                // turns of Coil
dQ=0.4-(-0.4);        // Flux of Coil 
di=10-(-10);          // Decrease in Current 
L=N*(dQ/di)*10^-3;            // Induction of a Coil 
disp(' (a) induction of a Coil is = '+string(L)+' H');
dt=0.01;              // time Required to Decrease Current
e=L*(di/dt);          // Formula of emf (using Self induction)
disp('(b) emf induced in a Coil is = '+string(e)+' Volt');



       //  p 229     7.3
