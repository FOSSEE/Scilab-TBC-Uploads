

                     // Example  7.4

r=0.75*10^-2;      // Radius  of Solenoid
A=%pi*r*r;         // area of Solenoid
N=900;             // No,of turns
l=0.3;             // Length of Solenoid
mo=4*%pi*10^-7;    // Permeability of free Space
L=(N*N*mo*A)/l;    // Formula of Induction of a Coil 
I=5;               // Current of Coil
disp(' Induction of a Coil = '+string(L)+' H');
w=0.5*L*I*I;       // Energy Store
disp(' Energy Stored is = '+string(w)+' J');



       // p 229    7.4
