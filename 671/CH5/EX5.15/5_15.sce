w0=1000
wd=997
Yin=1.2E-3

zeta=sqrt(1-(wd/w0)^2)
alpha=zeta*w0
R=1/Yin
C=1/(2*alpha*R)
L=1/(w0*w0*C)

disp(C,L,R)