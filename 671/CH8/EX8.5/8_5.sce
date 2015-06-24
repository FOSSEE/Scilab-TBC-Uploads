function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

[Zr,Zc]=polar_to_cart(5,30)
Z2=complex(Zr,Zc)

V=200
N2=75
N1=100

I2=V/Z2
I1=N2/N1*I2

disp(norm(I1))
disp(" lagging" , real(I1)/norm(I1))
