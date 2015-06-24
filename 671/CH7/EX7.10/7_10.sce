Ac=12/10000
Fmin=160*9.81
B=sqrt(Fmin*2*uo/Ac)

H=2800
L=75/100
F=H*L
Lg=0.1/1000
A=24/10000
Rg=Lg/(uo*A)
fluxg=B*A
Fg=fluxg*Rg

Ftotal=F+Fg
imin=Ftotal/1000
disp(imin)