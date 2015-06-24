n1=1000
V=230
Ia=75
Ra=0.1
Ea1=V-Ia*Ra
Rf=275
If=V/Rf
Ke=Ea1/If/n1

n2=1200
Ia=125
Ea2=V-Ia*Ra
If2=Ea2/Ke/n2
Rf2=V/If2
Rfext=Rf2-Rf
disp(Rfext)


