clear
clc

Vb=240

Ib=100* exp(%i *-1* acos (.8))
Ia=100* exp(%i *-1* acos (.6))

z=complex(.2, .3)

Va=round((Vb + (Ib * z/2)))
Isa = (Ia * exp(%i * 1 * atan(imag(Va)/real(Va)))) + Ib
//Isa=Isa*%i

Vs=Va + (Isa * z/2)
Vs=round(Vs*100)/100
vs=abs(Vs)
phi=atand(imag(Vs)/real(Vs))

mprintf("|Vs| = %.2f A, phase angle between Vs & Vb = %.2f deg", fix(vs*100)/100, phi)
