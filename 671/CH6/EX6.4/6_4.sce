function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

Vl=400
Vp=Vl/sqrt(3)
disp(Vp)

[Ir,Ic]=polar_to_cart(50,-30)
Il=complex(Ir,Ic)
Ip=Il
Zy=Vp/Il
disp(Zy)

P=sqrt(3)*Vl*Il*cos(30/180*%pi)
Q=sqrt(3)*Vl*Il*sin(30/180*%pi)
disp(P,Q)