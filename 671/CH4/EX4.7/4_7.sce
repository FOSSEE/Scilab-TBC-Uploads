function [r,theta]=cart_to_polar(z)
    x=real(z)
    y=imag(z)
    r=norm(z)
    theta=atan(y/x)
endfunction

function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

w=400
R=10
L=25E-3
C=250E-6
Xl=w*L*%i
Xc=1/(w*C*%i)

////////////part a
Zin1=R+Xc
[r1,theta1]=cart_to_polar(Zin1)
disp(theta1*180/%pi,r1)

////////////part b
//Zin2=10+parallel(Xc,Xl)   ///impedence is infinite...thus an error
//[r2,theta2]=cart_to_polar(Zin2)
disp(90,"   inf")


////////////part c
Zin3=R+parallel(Xc,Xl+10)
[r3,theta3]=cart_to_polar(Zin3)
disp(theta3*180/%pi,r3)