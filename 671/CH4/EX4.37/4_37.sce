function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

[Ir,Ic]=polar_to_cart(20,60)
I=complex(Ir,Ic)

w=5000
R=3000
L=1
C=0.25E-6
Xl=w*L*%i
Xc=1/(w*C*%i)

Z=parallel(R+Xl,Xc)
V=I*Z
disp(V)