function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

[Ir,Ic]=polar_to_cart(2,10)
I1=complex(Ir,Ic)
[Ir,Ic]=polar_to_cart(3,90+30)
I2=complex(Ir,Ic)

w=4
R=2
L=0.5
C=1/4
Xl=w*L*%i
Xc=1/(w*C*%i)

//deactivate voltage source
i1=I1*(R+Xl)/(R+Xl+Xc)

//deactivate curr source
i2=I2/(R+Xl+Xc)

i=i1+i2
disp(i)