
                     // Example  7.7

k=1;                  // Constant
N1=2000;              // turns of Solenoid
N2=500;               // turns of Coil
mo=4*%pi*10^-7;       // Permeability of free Space
A=30*10^-4;           // Area of aCoil 
l=0.7;                // Length of Solenoid
z=k*N1*N2*mo*A;       // alphabet for simplicity
M=z/l;                // Formula of Mutual Inductance
disp('(a) Mutual induction of a Coil = '+string(M)+' H');
dit=260;              // Rate of Chenge of Current
e=M*dit;              // Formula of emf (using Mutual induction)
disp('(b) emf induced in a Coil is = '+string(e)+' Volt')




      // p232       7.7
