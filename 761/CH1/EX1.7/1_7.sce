clc;
//page no 23
//pro no 1.7
//Given:refer fig.1.12 of page no.23;R1=100ohm,300K;R2=200ohm,400k;B=100kHz;Rl=300ohm
R1=100;T1=300;R2=200;T2=400;B=100*10^3;Rl=300;k=1.38*10^-23;
//open-ckt noise voltage is given by
//Vn1 =sqrt(Vr1^2 + Vr2^2)
//    =sqrt[sqrt(4kTBR1)^2 + sqrt(4kTBR2)^2]
//by solving this we get Vn1=sqrt[4kB(T1R1 + T2R2)]
Vn1=sqrt(4*k*B*(T1*R1 + T2*R2));
disp('volts',Vn1,'Open-ckt noise voltage is ');
// since in this case the load is equal in value to the sum of the resistors,
// one-half of this voltage is appear across the load.
// Now the load power is P=  Vn1^2/Rl
P=  (Vn1/2)^2/Rl;
disp('W',P,'The load power is');