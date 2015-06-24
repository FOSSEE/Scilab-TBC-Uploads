//chapter13,Example13_4,pg 392

n=0.4//efficiency

N=6.023*10^23

Eperfi=200*10^6//energy per fission

E=Eperfi*1.6*10^-19

P=100*10^6

A=235

T=24*60*60

m=(P*A*T)/(n*N*E)

printf("mass of 235U consumed/day\n")

printf("m=%.2f gm",m)