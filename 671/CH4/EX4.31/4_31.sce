I=10*(cos(%pi/180*37)-%i*sin(%pi/180*37))
V=6
C=250E-6
w=1000
Xc=1/(w*C*%i)

Ic=V/Xc
disp(Ic)

Ix=imag(I-Ic)
X=abs(V/Ix)
Ir=real(I-Ic)
R=V/Ir

disp(R,X)