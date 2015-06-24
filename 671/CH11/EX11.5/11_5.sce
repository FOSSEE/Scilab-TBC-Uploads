
Pein=1000000
pf=0.9
Xs=3.24
theta=acos(pf)
V=3300
Ia=Pein/sqrt(3)/pf/V*exp(%i*theta)
Vt=V/sqrt(3)
Ef=norm(Vt-%i*Ia*Xs)
Pemax=3*Vt*Ef/Xs
Ia=(Vt+Ef*%i)/%i/Xs
Qe=-sqrt(3)*V*imag(Ia)

disp(Pemax)
disp(norm(Ia))
disp(real(Ia)/norm(Ia))
disp(Qe)
