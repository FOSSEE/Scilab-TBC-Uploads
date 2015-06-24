R=5
C=0.08E-6
L=5E-3

w0=1/sqrt(L*C)
f0=w0/2/%pi
Q0=w0*L/R
bandwidth=w0/Q0
wb=bandwidth
w=[w0-1/2*wb,w0+1/2*wb]

disp(w(2),w(1))