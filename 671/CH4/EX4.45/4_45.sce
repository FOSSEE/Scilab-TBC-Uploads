I=20
w=2000
R=200
L=0.25
Xl=w*L*%i

Ir=I*Xl/(Xl+R)
Il=I-Ir
Vl=Xl*Il

t=1E-3
ir=sqrt(2)*real(Ir*exp(%i*w*t))
il=sqrt(2)*real(Il*exp(%i*w*t))
vl=sqrt(2)*real(Vl*exp(%i*w*t))
is=sqrt(2)*real(I*exp(%i*w*t))
vs=vl

Pr=ir*ir*R
Pl=vl*il
Ps=is*ir*R
Pr=ir*vl

disp(Ps,Pl,Pr)