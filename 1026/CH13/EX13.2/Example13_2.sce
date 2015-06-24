//chapter13,Example13_2,pg 391

M235U=235//at.mass of 235U

m=10^-3

N=6.023*10^23

Eperfi=200*10^6//energy per fission

E=Eperfi*1.6*10^-19//energy per fission (in joules)

T=10^-6

A=M235U

P=((m*N)/A)*(E/T)//power output

printf("power of explosion\n")

printf("P=%.2f watt",P)