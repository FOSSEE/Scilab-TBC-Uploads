function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

omega=exp(%i*120/180*%pi)
Va=200
Vb=200/omega
Vc=200*omega

[Zr,Zc]=polar_to_cart(100,60)
Z=complex(Zr,Zc)

Ia=Va/Z
Ib=Vb/Z
Ic=Vc/Z

disp(Va,Vb,Vc,Ia,Ib,Ic)