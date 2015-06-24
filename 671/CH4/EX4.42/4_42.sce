w=400
R=5
L=25E-3
C=1.25E-3
Xl=w*L*%i
Xc=1/(w*C*%i)

Z=R+Xl+Xc
Y=1/Z
C=-imag(Y)/w
Yn=real(Y)
Rn=1/Y

disp(C)