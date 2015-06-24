

                     // Example  7.10

La=1.4;               // Inductance of 2 Similar Coupled Coil in Series
Lo=0.6;               // Inductance of 2 Similar Coupled Coil in Opposing
M=(La-Lo)/4;          // Formula for (Mutual Inductance of Coils)
disp('(a) Mutual induction of a Coil = '+string(M)+' mH');

                // Since La= L1+L2+2M     but (M=0.2 mH)
                // there for L1= L2= 5 mh

L1=0.5*10^-3;                // Self Inductance of Coil 1
L2=0.5*10^-3;                // Self Inductance of Coil 2
k=(M*10^-3)/sqrt(L1*L2);     // Mutual Inductance of Coil 1 & 2
disp('(b) Coefficient of Coupling between the Coils = '+string(k));




              // p136     7.10