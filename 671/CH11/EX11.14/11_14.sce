
V=400
Vt=V/sqrt(3)
Ia=50
pf=1
theta=0
Xs=1.3

Ef=Vt-%i*Xs*Ia
delta=atan(imag(Ef)/real(Ef))
disp(delta*180/%pi)

Pelec=sqrt(3)*V*pf*Ia
Pmech=Pelec
pf=0.8
theta=acos(0.8)
Ia=Pelec/sqrt(3)/V/pf*exp(%i*theta)
Ef2=Vt-%i*Xs*Ia
If=0.9*norm(Ef2)/norm(Ef)
disp(If)
