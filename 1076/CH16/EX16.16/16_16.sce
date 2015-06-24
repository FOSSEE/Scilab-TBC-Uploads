clear
clc

//(a)
V=230
df=5/100

I1=20
I2=10
L1=300
L2=200
L=500
I=I1+I2

rho=.0286
T=20
dT=30
a=.004
rho1=rho*(1+(dT*a))
rho1=round(rho1*1000)/1000

A=1
A1=I1/I
A2=I2/I

A=rho1*2*((L*round(I/A))+(L1*round(I1/A1)))/(df * V)
A=round(A*100)/100

A1=A*A1
A2=A*A2

mprintf("\n(a)CROSSECTIONS: SC= %.2f mm sq, CA= %.2f mm sq, CB= %.2f mm sq",A, A1, A2 )

R=2*rho1 * (L/A)
R1=2*rho1 * (L1/A1)
R2=2*rho1 * (L2/A2)

P=(I*I*R)+(I1*I1*R1)+(I2*I2*R2)

PL=P*100/((V*I1)+(V*I2))
mprintf("\n(b)Percentage power loss = %.1f percent",PL )

