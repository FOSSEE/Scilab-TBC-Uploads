function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

[Vr,Vc]=polar_to_cart(120,45)
V=complex(Vr,Vc)

[Zr,Zc]=polar_to_cart(16.3,24.5)
Z=complex(Zr,Zc)

w=50

I=V/Z
P=V*conj(I)
Pavg=real(P)
pf=real((V/I)/norm(V/I))

disp(pf,Pavg)