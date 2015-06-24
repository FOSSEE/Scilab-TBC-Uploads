P=10000
V=400
pf=0.8
Xs=16
theta=acos(pf)
Ia=P/sqrt(3)/V*exp(-%i*theta)
Vt=V/sqrt(3)
Ef=Vt+%i*Xs*Ia
disp(norm(Ef))
disp(atan(imag(Ef)/real(Ef))*180/%pi)

Ef2=1.2*norm(Ef)
Pe=P*pf
delta=asin(norm(Pe/3*Xs/Ef2/Vt))
Ef2=Ef2*exp(%i*delta)
Ia=(Ef2-Vt)/%i/Xs       //calculation mistake in the book at this point
disp(norm(Ia))
pf=real(Ia)/norm(Ia)
disp(pf)
disp(acos(pf)*180/%pi)

delta=%pi/2
Pemax=norm(3*Ef*Vt/Xs*sin(delta))
disp(Pemax)
Ef=norm(Ef)*%i
Ia=(Ef-Vt)/%i/Xs
disp(norm(Ia))
disp(real(Ia)/norm(Ia))
