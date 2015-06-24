w0=2.5E6
Zin=60E3
Q0=80

R=60E3
C=Q0/(w0*R)
L=1/(C*w0*w0)

disp(C,L,R)