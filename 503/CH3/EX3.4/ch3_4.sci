// To calculate primary current and its pf

clc;

function [x,y]=polar2rect(r,theta)
    x=r*cosd(theta);
    y=r*sind(theta);
endfunction

function [r,theta]=rect2polar(x,y)
    r=sqrt(x^2+y^2);
    theta=atand(y/x);
endfunction

I_2=[10 -30];
[I_2r(1),I_2r(2)]=polar2rect(I_2(1),I_2(2));

I_0=[1.62 -71.5];
[I_0r(1),I_0r(2)]=polar2rect(I_0(1),I_0(2));

I_1r=I_0r+I_2r;

[I_1(1),I_1(2)]=rect2polar(I_1r(1),I_1r(2));
disp(I_1(1),'primary current(A)=');
pf=cosd(I_1(2));
disp(pf,'power factor=');

