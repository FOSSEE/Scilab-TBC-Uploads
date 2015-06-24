//chapter13,Example13_7,pg 394

m=10*10^3

N=6.023*10^23

Eperfi=200*10^6//energy per fission

E=Eperfi*1.6*10^-19//energy in joules

A=235

T=24*60*60

P=((m*N)/A)*(E/T)

printf("power output\n")

printf("P=%.2f watt",P)