V=440
I=25
pf=0.85
Pin=sqrt(3)*V*I*pf
ns=1500
Pcore=750
Pcus=950
Pcur=450
Pwfl=250

Pg=Pin-Pcore-Pcus
disp(Pg)

Pm=Pg-Pcur
disp(Pm)

Pmout=Pm-Pwfl
disp(Pmout)

effi=Pmout/Pin
disp(effi)

s=Pcur/Pg
n=(1-s)*ns
disp(n)

w=2*%pi*n/60
Tdev=Pm/w
disp(Tdev)
Tnet=Pmout/w
disp(Tnet)
