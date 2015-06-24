L=40E-6
R=4.02
f0=800E3

w0=2*%pi*f0
C=1/(w0*w0*L)
Q0=w0*L/R
fb=f0/Q0

Xl=w0*L*%i
Xc=1/(w0*C*%i)
Zin=R+Xl+Xc

disp(Zin,fb,C)