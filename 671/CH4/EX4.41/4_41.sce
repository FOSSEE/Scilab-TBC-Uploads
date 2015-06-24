w=2
L=1
C=0.5
Xl=w*L*%i
Xc=1/(w*C*%i)

V=1
I=V/(1+%i)
Y=I/V
R=1/real(Y)

disp(R,Y)