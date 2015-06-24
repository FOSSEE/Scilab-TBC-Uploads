P=25000
n=1600
V=250
If=1.5
Rf=V/If
disp(Rf)

Ra=0.1
V=220
Ia=P/V
Ea=V-Ia*Ra
If=0.875
disp(If)
Rf=V/If
disp(Rf)

Pdev=Ea*Ia
disp(Pdev)
Tdev=Pdev/2/%pi/n*60
disp(Tdev)
