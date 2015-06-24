V=4*sqrt(2)
w=2
R=4
L=2
Xl=w*L*%i

Il=V/(R+Xl)
Ic=-imag(Il)*%i
C=Ic/(V*%i*w)

disp(C)