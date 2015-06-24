//chapter6,Example6_13,pg 125

e=1.6*10^-19

n=7*10^21

ue=0.39

V=10^-3

A=10^-6

L=10*10^-3

I=(n*e*ue*V*A)/L

Rhe=-(1/(n*e))

Bz=0.2

d=10^-3

Vhe=(Rhe*I*Bz)/d

printf("current through bar I=%.7f A\n",I)

printf("\nhall coeff. Rhe=%.6f m3/c\n",Rhe)

printf("\nhall voltage Vhe=%.8f volt\n",Vhe)