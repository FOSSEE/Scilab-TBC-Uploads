L=10E-6
R=1
C=10E-9
V=10

Zmax=L/R/C
I=V/Zmax
w0=1/sqrt(L*C)
w=0.9*w0

Y=R*C/L+%i*(w*C-1/w/L)
I=norm(Y)*V

disp(I)