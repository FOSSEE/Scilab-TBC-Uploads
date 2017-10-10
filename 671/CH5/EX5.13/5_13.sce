f0=1E6
Cmax=500E-12
C=450E-12
w0=2*%pi*f0

L=1/(w0*w0*Cmax)

w=1/sqrt(L*C)
f=w/(2*%pi)
wb=2*2*%pi*(f-f0)
r=wb*L
Q0=2*%pi*f*L/r

disp(Q0,L,r)

////////calculation mistakes in book