omega=exp(%i*120/180*%pi)

function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

[Zr,Zc]=polar_to_cart(5,60)
Z=complex(Zr,Zc)

[Vr,Vc]=polar_to_cart(25,30)
Van=complex(Vr,Vc)

Ian=Van/Z
Ibn=Ian/omega
Icn=Ian*omega

Vcn=Van*omega
Vac=Van-Vcn

disp(Ibn,Icn,Vac)