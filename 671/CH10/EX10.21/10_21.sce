
V=230
Ea=210
Ia=40
Ra=(V-Ea)/Ia
disp(Ra)

Pdev=Ea*Ia
n=1200
wm=2*%pi*n/60
Tdev=Pdev/wm
disp(Pdev)
disp(Tdev)

n=n*V/Ea
disp(n)
