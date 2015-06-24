omega=exp(%i*120/180*%pi)

Zp=17.32+%i*10
Vab=400
Iab=Vab/Zp
Ica=Iab/omega
IAa=Iab-Ica
IBb=IAa/omega
ICc=IAa*omega
disp(ICc,IBb,IAa)

Pab=(norm(Iab)^2)*real(Zp)
Ptotal=3*Pab
disp(Ptotal)

Itotal=IAa+IBb+ICc
disp(Itotal)