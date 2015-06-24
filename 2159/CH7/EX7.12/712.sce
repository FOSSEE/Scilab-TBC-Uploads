// problem 7.12
b=10
d=4
i=1/1000
N=0.03
A=b*d
P=b+(2*d)
m=A/P
z1=23+(0.00155/i)+(1/N)
z2=1+((23+(0.00155/i))*(N/(m^0.5)))
C=z1/z2
Q=A*C*((m*i)^0.5)
disp(Q*1000,"discharge through the rectangular channel in litres/sec")
