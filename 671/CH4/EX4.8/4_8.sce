function [r,theta]=cart_to_polar(z)
    x=real(z)
    y=imag(z)
    r=norm(z)
    theta=atan(y/x)
endfunction

function [x,y]=polar_to_cart(zpolar)
    r=real(zpolar)
    theta=imag(zpolar)/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

R=200
L=0.5
C=50E-6
w=200

Xl=w*L*%i
Xc=1/(w*C*%i)

////////////////////////////part a
Ir=complex(0.02*cos(30*%pi/180),0.02*sin(30*%pi/180))
V=Ir*R
Il=V/Xl
Ic=V/Xc
I=Ir+Il+Ic
disp(I)

////////////////////////////part b
[Ix,Iy]=polar_to_cart(complex(2,-40))
I=complex(Ix,Iy)
Zin=parallel(parallel(R,Xc),Xl)
V=Zin*I
Ir=V/R
disp(V,Ir)