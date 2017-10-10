clc
R=8.314
P2=10^6//pressure in pascals
P1=100*10^3 //pressure in pascal
deltas=-R*log(P2/P1)
mprintf("s2-s1=%fkJ/kmol K\n",deltas)//ans vary due to roundoff error
TO=300
Wmin=-TO*deltas
mprintf("Wmin=%fkJ/kmol K",Wmin)//ans vary due to roundoff error
