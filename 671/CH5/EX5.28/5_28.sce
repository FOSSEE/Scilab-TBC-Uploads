function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

[Vr,Vc]=polar_to_cart(4,30)
V=complex(Vr,Vc)

[Ir,Ic]=polar_to_cart(0.8,-10)
I=complex(Ir,Ic)

wv=3
wi=5
R1=1
L=2
R6=6
C=1/3

//////////deactivating curr source
Xl=wv*L*%i
Xc=1/(wv*C*%i)
Il1=V/(R1+R6+Xl+Xc)
Pav1=norm(Il1)^2*R1

//////////deactivating voltage source
Xl=wi*L*%i
Xc=1/(wi*C*%i)
Il2=I*(R6+Xl)/(R6+Xl+R1+Xc)
Pav2=norm(Il2)^2*R1

Pav=Pav1+Pav2

disp(Pav)