R=1E6
L=1
C=1E-6
I=10E-6

w0=1/sqrt(L*C)
V=I*R

wb=1/(R*C)
Q0=w0/wb
w1=w0-wb/2
w2=w0+wb/2

disp(w2,w1,V,Q0,w0)