C=12E-9
L=4E-3
R=5

w0=1/sqrt(L*C)

Vc=1.5
I=w0*C*Vc
Zi=R
Vi=R*I

disp(Vi,w0)