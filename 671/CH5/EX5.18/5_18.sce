V=100
R=10
L=2E-3
C=200E-6

w0=1/sqrt(L*C)
Xl=w0*L*%i
Xc=1/(w0*C*%i)
I=V/R

Vl=I*Xl
Vc=I*Xc
Vlc=Vl+Vc

disp(Vlc,Vc,Vl,I,w0)