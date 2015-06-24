function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

R1=1
R2=6
L=2
C=1/3

[Vx,Vy]=polar_to_cart(4,30)
[Ix,Iy]=polar_to_cart(0.8,-10)

//deactivate current source
V=complex(Vx,Vy)
w=3
Xl=w*L*%i
Xc=1/(w*C*%i)

Il1=V/(R1+R2+Xl+Xc)
Pav1=norm(Il1)^2*R1

//deactivate voltage source
I=complex(Ix,Iy)
w=5
Xl=w*L*%i
Xc=1/(w*C*%i)

Il2=I*(R2+Xl)/(R2+Xl+R1+Xc)
Pav2=norm(Il2)^2*R1

Pav=Pav1+Pav2
disp(Pav)