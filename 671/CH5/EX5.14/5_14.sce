R=10E3
L=50E-3
C=100E-6

w0=1/sqrt(L*C)
Q0=w0*R*C
alpha=w0/2/Q0
zeta=alpha/w0
wd=w0*sqrt(1-zeta^2)

disp(wd,zeta,alpha,Q0,w0)

//////////calculation mistakes in the book