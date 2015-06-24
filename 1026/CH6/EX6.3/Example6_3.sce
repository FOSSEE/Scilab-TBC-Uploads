//chapter6,Example6_3,pg 121

vd=1*10^-3

sig=6.17*10^7

ue=0.0056

rhoe=-(sig/ue)

Jc1=-rhoe*vd

E1=(Jc1)/sig

I=80

A=9*10^-6

Jc2=I/A

E2=Jc2/sig

V=0.5*10^-3

d=3*10^-3

E3=V/d

printf("E-field due to Jc1\n")

printf("E1=%.6f V/m",E1)

printf("\nE-field due to Jc2\n")

printf("E2=%.6f V/m",E2)

printf("\nE-field due to cube\n")

printf("E3=%.6f V/m",E3)
