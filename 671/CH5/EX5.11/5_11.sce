w0=1E6
wb=1000
V=0.05
I=5E-3

R=V/I
Q0=w0/wb
L=R*Q0/w0
C=1/(w0*w0*L)
Vl=w0*L*I
Vc=Vl
w1=w0-wb/2
w2=w0+wb/2

disp(w2,w1,Vc,Vl,C,L,Q0,R)