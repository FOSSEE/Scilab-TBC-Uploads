// problem 7.13
b=4
d=1.5
i=1/1000
C=55
A=b*d
P=b+(2*d)
m=A/P
Q=A*C*((m*i)^0.5)
d1=(A/2)^0.5
b1=d1*2
disp(d1,b1,"the new dimension of the channel")
P1=b1+(2*d1)
m1=A/P1
Q1=A*C*((m1*i)^0.5)
Qf=Q1-Q
disp(Qf,"increase in discharge in m3/sec")
