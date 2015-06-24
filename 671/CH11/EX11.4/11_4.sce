Pe=10000000
V=12500
Xs=8
Vt=V/sqrt(3)
Ef=Vt*1.2

delta=asin(Pe/3/Vt/Ef*Xs)
Ia=(Ef*exp(%i*delta)-Vt)/%i/Xs
pf=real(Ia)/norm(Ia)
Qe=-sqrt(3)*V*imag(Ia)

disp(norm(Ia))
disp(pf)
disp(Qe)
