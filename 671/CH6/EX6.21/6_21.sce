omega=exp(%i*120/180*%pi)
w=2*50*%pi
Vry=415
Vyb=Vry/omega
Vbr=Vry*omega

C=40E-6
Zry=100
Zyb=complex(20,60)
Zbr=1/(%i*w*C)

I1=Vry/Zry
I2=Vyb/Zyb
I3=Vbr/Zbr

Ir=I1-I3
Iy=I2-I1
Ib=I3-I2

disp(norm(Ir),norm(Iy),norm(Ib))