
                     // Example  7.8

N2=1700;                  // turns of Coil 1
Q2=0.8*10^-3;             // total Megnetic Flux
I2=6;                     // Current in A Coil 2
L2=N2*(Q2/I2);            // Formula for (Self Inductance of Coil 1)
disp('(a) Self Induction of a Coil 2 = '+string(L2)+' H');
N1=600;                   // turns of Coil 2
L1=L2*(N1^2/N2^2);        // Formula for(Self Inductance of Coil 2)
disp('(b) Self Induction of a Coil 1 = '+string(L1)+' H');
Q21=0.5*10^-3;            // Megnetic Flux in 1st Coil
k=Q21/Q2;                 // Constant
disp( '(c) Perposnality Constant (k) = '+string(k));
M=k*sqrt(L1*L2);          // Mutual Inductance of Coil 1 & 2
disp('(d) Mutual induction of a Coil = '+string(M)+' H');



       // p 233      7.8