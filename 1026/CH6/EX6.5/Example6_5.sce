//chapter6,Example6_5,pg 122

ni=2.5*10^19

um=0.39

up=0.19

e=1.6*10^-19

L=6*10^-3

R=120

A=0.5*10^-6

sigp=L/(R*A)

p=sigp/(e*up)

Na=p

n=(ni^2)/Na

sigm=n*e*um

ratio=sigp/sigm

printf("p-type impurity concentration\n")

disp(p)

printf("\nproportion of conductivity due to hole and electron\n")

printf("ratio=%.f",ratio);printf(":1")