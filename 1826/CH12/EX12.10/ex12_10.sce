// Example 12.10, page no-356
clear
clc
h_ir=444//J.kg^-1.K^-1
h_gr=711//J.kg^-1.K^-1
h_pl=1880//J.kg^-1.K^-1
t2=373//K
t1=300//K
delT=t2-t1
W=2 //Kg

//(a) For Iron
q=W*h_ir*delT

//(b)for Graphite
q1=W*h_gr*delT

//(b)for polypropylene
q2=W*h_pl*delT

printf("The heat energy required to raise temperature %.0f K from its temperature of \niron, graphite and polypropylene is %.0f,%.0f,%.0f J respectively",delT,q,q1,q2)
