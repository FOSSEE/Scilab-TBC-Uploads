function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

[Vr,Vc]=polar_to_cart(231,60)
Van=complex(Vr,Vc)

Sp=(2.5-%i*1.2)*1000

omega=exp(%i*120/180*%pi)
Vbn=Van/omega
Vcn=Van*omega

Vbc=Vbn-Vcn

Ibc=conj(Sp/Vbc)
Ica=Ibc*omega
Iab=Ibc/omega

IaA=Ica-Iab

disp(IaA)