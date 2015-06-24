

                     // Example  7.9

N2=800;                   // turns of Coil 2
N1=1200;                  // turns of Coil 1
Q2=0.15*10^-3;            // Megnetic Flux in Coil 2
Q1=0.25*10^-3;            // Megnetic Flux in Coil 1
I2=5;                     // Current in A Coil 2
I1=5;                     // Current in A Coil 1

L1=N1*(Q1/I1);            // Formula for (Self Inductance of Coil 1)
disp('(a) Self Induction of a Coil 1 = '+string(L1)+' H');

L2=N2*(Q2/I2);            // Formula for (Self Inductance of Coil 2)
disp('(b) Self Induction of a Coil 2 = '+string(L2)+' H');

k=0.6;                    // Coefficient of Coupling Constant
Q12=k*Q1;                 // Formula for (Megnetic Flux in 2nd Coil)
M=N2*(Q2/I1);             // Formula for (Mutual Inductance of Coils)
disp('(c) Mutual induction of a Coil = '+string(M)+' H');

k1=M/sqrt(L1*L2);         // Mutual Inductance of Coil 1 & 2
disp('(d) Coefficient of Coupling between the Coil = '+string(k1)+' H');



       // p 233      7.9