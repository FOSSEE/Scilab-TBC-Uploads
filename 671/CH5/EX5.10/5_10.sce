C=2.5E-6
R=8
wb=400

L=R/wb
w0=1/sqrt(L*C)
Q0=w0*L/R
w1=w0-wb/2
w2=w0+wb/2

disp(w2,w1,Q0,w0,L)