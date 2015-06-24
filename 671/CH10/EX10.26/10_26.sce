V=600
Pout=60000
effi=0.85
Pin=Pout/effi
Il=Pin/V
Rf=100
If=V/Rf
Ia=Il-If
Ra=0.16
Ea=V-Ia*Ra

n=900
n0=n*V/Ea
sr=n0/n-1
disp(n0)
disp(sr)

TL=Pin-Pout
Pcu=Ia*Ia*Ra
Psh=If*If*Rf
Prl=TL-Pcu-Psh
disp(Prl)
