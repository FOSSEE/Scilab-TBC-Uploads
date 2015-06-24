//determine the size of bolts
clc
//solution
//given
//ref fig 11.31
W=30000//N
ft=60//N/mm^2
L1=80//mm
L2=250//mm
L=500//mm
Wt1=W/4//N
printf("the value of Wt1 is,%f N\n",Wt1)
w=(W*L)/(2*(L1^2+L2^2))//N/mm
printf("the value of w is,%f N/mm\n",w)
Wt2=w*L2//N
printf("the value of Wt2 is,%f N\n",Wt2)
Wt=Wt1+Wt2//N
printf("the value of Wt is,%f N\n",Wt)
pi=3.14
//klet dc be coire dia
dc=sqrt((Wt*4)/(pi*ft))//mm
printf("the core diameter of bolt is,%f mm",dc)