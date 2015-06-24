//find
clc
//solution
//given
Wr=7000//N
Wa=2100//N
L=160*10^6//rev
N=300//rpm
//ref table 27.4,Wa/Wr=0.3..
X=0.65
Y=3.5
V=1
W=X*V*Wr + Y*Wa//N
C=W*(L/10^6)^(1/3)//N
printf("baisc dynamin load rating is,%f N\n",C)