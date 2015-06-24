Q0=200

//a
R=1
C=2E-6
L=C/(Q0/R)^2
disp(L)

L=2E-15
C=1.2E-9
R=Q0*sqrt(L/C)
disp(R)

R=118500
L=120E-12
C=L*(Q0/R)^2
disp(C)