clc
Q=[1 1;(1/4) (1/3)]//matrix for (A),(B) LHS
R=[1500;(2500/6)] //matrix for (A),(B),RHS
S=inv(Q)*R//solving equation A and B
Q2=S(1,1)
Q3=S(2,1)
mprintf("Q2=%fkJ\n",Q2)
mprintf("Q3=%ikJ\n",Q3)



