clear
clc

R1=4
R2=2

S=50
V1=11
V2=132
V3=33
Z1=V1*V1/S
Z2=V2*V2/S
Z3=V3*V3/S

r1=3*R1/Z1
r2=3*R2/Z3


x1g=.4*%i
x2g=.3*%i
x0g=.1*%i

x1t1=.08*%i
x2t1=.08*%i
x0t1=.08*%i

x1t2=.05*%i
x2t2=.05*%i
x0t2=.05*%i

x1t3=.04*%i
x2t3=.04*%i
x0t3=.04*%i

x1t4=.06*%i
x2t4=.06*%i
x0t4=.06*%i


X1l=20*%i
X2l=20*%i
X0l=50*%i

x1l=X1l/Z2
x2l=X2l/Z2
x0l=X0l/Z2

X1=x1g+x1t2+x1l+x1t1+x1t3
X2=x2g+x2t2+x2l+x2t1+x2t3
X0=r2+(((x0t2+x0l+x0t1)*x0t4/(x0t2+x0l+x0t1+x0t4))+x0t3)

IF=abs(3*1/(X1+X2+X0))
IB=S*1e6/(sqrt(3)*V3*1e3)
If=IF*IB
SF=IF*S
mprintf("fault current= %.0fA, fault level=%.2f MVA",If,SF)

