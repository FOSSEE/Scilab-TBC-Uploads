Xspu=0.8
P=1000000
V=3000
Xs=Xspu*V*V/P

Vt=V/sqrt(3)
Pm=750000
Pe=Pm
pf=0.85
theta=acos(pf)
Ia=Pm/0.8/sqrt(3)/V*exp(-%i*theta)

Ef=Vt-%i*Xs*Ia
Efline=sqrt(3)*norm(Ef)
disp(Efline)

delta=%pi/2
Pmax=3*Vt*norm(Ef)/Xs
disp(Pmax)
ns=120*50/12
ws=ns*2*%pi/60
Tmax=Pmax/ws        //////calculation mistake in the book at this point
disp(Tmax)

delta=90
Efmin=Pm/3*Xs/Vt
Efmin_line=sqrt(3)*Efmin
disp(Efmin_line)

Ia=(Vt+%i*Efmin)/%i/Xs
disp(norm(Ia))
pf=real(Ia)/norm(Ia)
disp(pf)
