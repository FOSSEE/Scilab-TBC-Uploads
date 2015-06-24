w=10
R=2
L=0.3
Ir=10*(cos(%pi/4)+%i*sin(%pi/4))
Vr=Ir*R
Vc=20*(cos(%pi/4)-%i*sin(%pi/4))
V=Vr+Vc
Ic=Ir
C=Ic/(w*Vc*%i)
disp(real(C))      ///////Wrong in book