//example 4.3
//least square curve fitting procedure
//page 130
clc;clear;close;
x=[0 1 2 4 6];
y=[0 1 3 2 8];
z=[2 4 3 16 8];
for i=1:5
    x2(i)=x(i)^2;
    y2(i)=y(i)^2;
    z2(i)=z(i)^2;
    xy(i)=x(i)*y(i);
    zx(i)=z(i)*x(i);
    yz(i)=y(i)*z(i);
end
S_x=0,S_y=0,S_z=0,S_x2=0,S_y2=0,S_z2=0,S_xy=0,S_zx=0,S_yz=0;
for i=1:5
    S_x=S_x+x(i);
    S_y=S_y+y(i);
    S_z=S_z+z(i);
    S_x2=S_x2+x2(i);
    S_y2=S_y2+y2(i);
    S_z2=S_z2+z2(i);
    S_xy=S_xy+xy(i);
    S_zx=S_zx+zx(i);
    S_yz=S_yz+yz(i);
end
printf('x\t       y\t      z\t      x^2\t      xy\t     zx\t     y^2\t    yz\n\n');
for i=1:5
    printf('%d\t    %d\t    %d\t    %d\t    %d\t    %d\t    %d\t     %d\n',x(i),y(i),z(i),x2(i),xy(i),zx(i),y2(i),yz(i));
    end
printf('----------------------------------------------------------------------------------------------------------------------------------------------------------------------\n\n');
printf('%d\t    %d\t     %d\t     %d\t    %d\t    %d\t     %d\t    %d\n\n',S_x,S_y,S_z,S_x2,S_xy,S_zx,S_y2,S_yz);
A=[5,13,14;13,57,63;14,63,78];
B=[33;122;109];
C=A^-1*B;
printf('solution of above equation is:a=%d b=%d c=%d',C(1,1),C(2,1),C(3,1));
