clear
clc

Vc=220

Z=2*complex(.15, .2)
Z1=.5*Z
Z2=.5*Z

Ib= 60 * exp (%i * -acos (.9))
Ic= 100 * exp (%i * -acos (.8))

Vb=Vc + (Ic * Z2)
Iab=Ib + Ic

Va=Vb + (Iab * Z1)
Vs=abs(Va)

Is= abs(Iab)
pf=cosd(abs(atand(imag(Va)/real(Va))+abs(atand(imag(Iab)/real(Iab)))))

mprintf("\nsending end voltage  = %.1f V", Vs)
mprintf("\nsending end current  = %.2f A", Is)
mprintf("\nsending end pf  = %.3f", pf)

