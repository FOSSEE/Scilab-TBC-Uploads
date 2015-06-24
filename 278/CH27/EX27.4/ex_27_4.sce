//find
clc
//solution
//given
Wr=2500//N
Wa=1500//N
//Wa/Wr=0.6
//refer table 27.4
X=1
V=1
Y=0
W=X*V*Wr + Y*Wa//N
//from table 27.5,Ks=1.5...
Ks=1.5
W1=W*Ks//N
//ref table 27.6
C=53000//N
L=(C/W)^(3)*10^6
printf("rating life is,%f rev\n",L)