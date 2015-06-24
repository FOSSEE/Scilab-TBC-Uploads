//find
clc
//solution
//given
Wr=4000//N
Wa=5000//N
N=1600//rpm
Lh=5*300*10//hrs//bearing life in hours
L=60*N*Lh//rev
//W=XVWr + YWa
//from tale 27.4,..we get 
X=0.56
Y=1
V=1
W=0.56*1*Wr +1*Wa//N
C=W*(L/10^6)^(1/3)
printf("dynamic load rating is,%f kN\n",C)
//from table 27.6, bearing numbr 315.
Co=72000//N
C1=90000//N
//Wa/Co=0.07,..
//from table 27.4
X1=0.56
Y1=1.6
W=0.56*1*Wr + 1.6*Wa//N
Cb=W*(L/10^6)^(1/3)
printf("basic dynamic load rating is,%f kN\n",Cb)
