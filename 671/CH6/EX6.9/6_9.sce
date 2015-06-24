function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

Vl=400
[Ir,Ic]=polar_to_cart(20,-30)
Iab=complex(Ir,Ic)

omega=exp(%i*120/180*%pi)
Ibc=Iab/omega
Ica=Iab*omega

IAa=Iab-Ica
Pab=Vl*norm(Iab)*cos(30/180*%pi)
Ptotal=3*Pab

Zp=Vl/Iab
Rp=real(Zp)

disp(IAa)
disp(Ptotal)
disp(Rp)