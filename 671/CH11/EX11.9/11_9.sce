Isc=60
If=50

Voc=15300
Isc=60
Xs_unsat=Voc/sqrt(3)/Isc
disp(Xs_unsat)

V=11000
Isc=67.5
Xs_sat=V/sqrt(3)/Isc
disp(Xs_sat)

pf=0.85
theta=acos(pf)
Ia=50*exp(-%i*theta)
Vt=11000
Vl=Vt/sqrt(3)
Ef=Vl+%i*Xs_sat*Ia
Efline=norm(Ef)*sqrt(3)
disp(Efline)

Voc=Efline
VR=Voc/Vt-1
disp(VR)
If=57.5
disp(If)




