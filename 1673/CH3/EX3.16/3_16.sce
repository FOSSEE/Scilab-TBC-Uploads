//example 3.16
//lagrange's interpolation formula
//page 104
clc;clear;close;
x=[0 %pi/4 %pi/2];
y=[0 0.70711 1.0];
x0=%pi/6;
sin_x0=0;
poly(0,'x');
for i=1:3
    p=y(i);
    for j=1:3
        if j~=i then
            p=p*((x0-x(j) )/( x(i)-x(j)))
        end
    end
    sin_x0=sin_x0+p;
    end
disp(sin_x0,'sin_x0=');
 