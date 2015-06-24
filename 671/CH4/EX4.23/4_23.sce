function [x,y]=polar_to_cart(r,theta)
    theta=theta/180*%pi
    x=r*cos(theta)
    y=r*sin(theta)
endfunction

[I1x,I1y]=polar_to_cart(2,10)
[I2x,I2y]=polar_to_cart(3,120)

I1=complex(I1x,I1y)
I2=complex(I2x,I2y)
w=4
R=2
L=3
C=1/4
Xl=w*L*%i
Xc=1/(w*C*%i)

//deactivate source 2
i1=(R+Xl)/(R+Xl+Xc)*I1
i2=1/(R+Xl+Xc)*I2
i=i1+i2
disp(i)  //answer is wrong in the book