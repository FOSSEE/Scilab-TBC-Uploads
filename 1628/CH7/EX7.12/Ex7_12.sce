

                     // Example  7.12

k=0.433;                    // Coefficient of Coupling Constant
L1=8;                       //Self Inductance of Coil 1
L2=6;                       //Self Inductance of Coil 2
M=k*sqrt(L1*L2);            // Mutual Inductance of Coil 1 & 2

Lpa=(L1*L2-M^2)/(L1+L2-2*M);     // Mutual Induction assists Self Induction
disp('(a) Mutual Induction assists Self Induction  = '+string(Lpa)+' H');

Lpo=(L1*L2-M^2)/(L1+L2+2*M);     // Mutual Induction Opposes Self Induction
disp('(b) Mutual Induction Opposes Self Induction  = '+string(Lpo)+' H');





       // p 239     7.12