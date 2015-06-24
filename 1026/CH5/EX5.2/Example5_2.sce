//chapter5,Example5_2,pg 97

V=3000

T1=3.5//reverberation time

A=(0.161*V)/T1

l=20

b=15

h=10

S=2*((l*b)+(b*h)+(h*l))

sum_a=A/S

am=0.5

a=0.106

T2=2.5//reverberation time after cloth use

S1=(((0.161*V)/(am-a))*((1/T2)-(1/T1)))

printf("area of wall covered by curtain cloth\n")

printf("S1=%.3f sq.m",S1)