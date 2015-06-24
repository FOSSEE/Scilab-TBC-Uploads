V=250
Ia=200
Ra=0.22

Ea=V-Ia*Ra
Pm=Ea*Ia
Prl=600
Pmout=Pm-Prl
n=1250
wm=2*%pi*n/60
Tl=Pmout/wm
disp(Tl)

Rf=125
Psh=V*V/Rf
Pein=V*Ia+Psh
effi=Pmout/Pein
disp(effi)
