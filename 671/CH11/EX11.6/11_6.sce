Pe=20000
Pm=20000
V=400
pf=0.8
Xs=4.5
Ia=Pm/sqrt(3)/V/pf*exp(%i*acos(pf))
Vt=V/sqrt(3)
Ef=Vt-%i*Ia*Xs      ///calculation mistake in the book at this step
Efline=norm(Ef)*sqrt(3)
disp(Efline)
disp(atan(imag(Ef)/real(Ef)))

delta=-%pi/2
Efmin=Pe/3*Xs/Vt*sin(-delta)
Efminline=Efmin*sqrt(3)
disp(Efminline)
disp(delta/%pi*180)
Ia=(Vt+%i*Efmin)/%i/Xs
disp(norm(Ia))
disp(real(Ia)/norm(Ia))
