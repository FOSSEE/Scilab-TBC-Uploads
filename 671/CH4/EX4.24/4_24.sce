V=230
w=2*%pi*50
R=8
L=0.1
C=160E-6

Xl=w*L*%i
disp(Xl)

Xc=1/(w*C*%i)
disp(Xc)

Z=norm(R+Xl+Xc)
disp(Z)
I=V/Z
disp(I)
pf=cos(atan(norm(Xl+Xc)/R))
disp(pf)

Vcoil=I*norm(R+Xl)
Vc=norm(I*Xc)
disp(Vc,Vcoil)