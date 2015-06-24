function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

//converting v source to curr source
V=15
R=5
I1=V/R


[Ix,Iy]=polar_to_cart(2,-30)
I2=complex(Ix,Iy)

//nodal analysis
A=[0.7-0.1*%i,-0.5;-0.5,0.5+0.5*%i]
V=inv(A)*[I1;I2]

[rv1,thetav1]=polar(V(1))
[rv2,thetav2]=polar(V(2))

disp(real(thetav2*180/%pi),rv2,real(thetav1*180/%pi),rv1)