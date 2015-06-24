function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

[Vr,Vc]=polar_to_cart(100,120)
V1=complex(Vr,Vc)

I=10
w=5000
R=10000
L=2.4E-3
C=0.05E-3


[Vr,Vc]=polar_to_cart(96,60)
Vl=complex(Vr,Vc)

Xl=w*L*%i
Xc=1/(w*C*%i)

Il=Vl/Xl
Ic=I-Il
V2=(R+Xc)*Ic+V1
V3=V2-Vl
V1=Ic*Xc

disp(V1,V2,V3)