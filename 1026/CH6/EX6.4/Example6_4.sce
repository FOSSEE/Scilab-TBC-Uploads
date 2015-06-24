//chapter6,Example6_4,pg 122

sig=3.82*10^7

L=1000*12*2.54*10^-2//converting into m

r=0.4*2.54*10^-2

V=1.2

Jc=sig*(V/L)

A=3.14*(r^2)

Ic=Jc*A

P=Ic*V

printf("current density\n")

printf("Jc=%.f A/m2",Jc)

printf("\ntotal current\n")

printf("Ic=%.2f A",Ic)

printf("\npower dissipation\n")

printf("P=%.2f watt",P)