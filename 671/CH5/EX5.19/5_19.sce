R=1
L=10E-6
C=10E-12
V=10


w0=1/sqrt(L*C)
Xl=w0*L*%i
Xc=1/(w0*C*%i)

Q0=w0*L/R
Z=R*Q0*Q0
Iin=V/Z

Ic=V/Xc

disp(Ic,Iin,Z,Q0,w0)