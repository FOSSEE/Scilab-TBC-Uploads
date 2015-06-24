function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

I=4
w=500
[Ir,Ic]=polar_to_cart(3,40)
Ix=complex(Ir,Ic)
C=1E-3
L=10E-3
Xl=w*L*%i
Xc=1/(w*C*%i)

Il=I-Ix
Ic=Ix
Vc=Ic*Xc
Vl=Il*Xl
Vx=Vl-Vc
disp(Vx)  //answer wrong in the book