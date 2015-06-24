clc;
clear;
function z=u(x,y)
    z=x^2+x*y-10
endfunction
function z=v(x,y)
    z=y+3*x*y^2-57
endfunction
x=1.5;
y=3.5;
e=[100 100];
while  e(1)>0.0001 & e(2)>0.0001
    J=[2*x+y x; 3*y^2 1+6*x*y];
    deter=determ(J);
    u1=u(x,y);
    v1=v(x,y);
    x=x-((u1*J(2,2)-v1*J(1,2))/deter);
    y=y-((v1*J(1,1)-u1*J(2,1))/deter);
    e(1)=abs(2-x);
    e(2)=abs(3-y);
end
bracket=[x y];
disp(bracket)
