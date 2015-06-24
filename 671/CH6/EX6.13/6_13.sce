omega=exp(%i*120/180*%pi)
Vrn=400/sqrt(3)
Vyn=Vrn/omega
Vbn=Vrn*omega

P1=4000
P2=8000
P3=12000

Ir=conj(P1/Vrn)
Iy=conj(P2/Vyn)
Ib=conj(P3/Vbn)

In=Ir+Iy+Ib

disp(norm(Ir),norm(Iy),norm(Ib),norm(In))