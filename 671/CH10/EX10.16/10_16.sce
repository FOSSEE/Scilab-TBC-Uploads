V=250
Rf=125
Ra=0.2
If=V/Rf
I=16
Ia0=I-If
Pk=V*Ia0-Ia0*Ia0*Ra+V*If

I=152
Ia=I-If
Pl=Ia*Ia*Ra+Pk
Pin=V*I
effi=(Pin-Pl)/Pin
disp(effi)

Il=152
Ia=Il+If
Pl=Ia*Ia*Ra+Pk
Pout=V*Il
effi=Pout/(Pout+Pl)
disp(effi)
