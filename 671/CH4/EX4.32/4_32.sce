V1=30+10*%i
V2=30
w=1000
L=1
C1=1E-6
C2=1E-6
R1=1000
R2=1000

Xl=%i*w*L
Xc1=%i/(w*C1)
Xc2=%i/(w*C2)

////////mesh equations

A=[1,%i; %i,1-2*%i]
I=inv(A)*[10*%i;30]

Ic1=I(1)-I(2)

disp(Ic1)










