V=230
Rf=120
Ra=0.15
If=V/Rf
Psh=V*V/Rf

I=14.5
Pin=I*V
Ia=I-If
Pk=Pin-Ia*Ia*Ra

I=215
Ia=I-If
Pl=Ia*Ia*Ra+Pk
Pin=V*I
effi=(Pin-Pl)/Pin
disp(effi)

Ia=sqrt(Pk/Ra)
Il=Ia+If
Pl=2*Pk
Pin=V*Il
effi=(Pin-Pl)/Pin
disp(effi)
