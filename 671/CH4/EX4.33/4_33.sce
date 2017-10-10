function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

[Ir,Ic]=polar_to_cart(3,30)
I=complex(Ir,Ic)
Zc=-5*%i
Zrl=10+5*%i

Ic=Zrl/(Zc+Zrl)*I
Vth=Ic*Zc
Zth=(Zc*Zrl)/(Zc+Zrl);
In=Vth/Zth

disp(Zth,In,Vth)