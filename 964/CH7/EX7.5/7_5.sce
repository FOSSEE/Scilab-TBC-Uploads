clc;
clear;
function z=u(x,y)
    z=x^2+x*y-10
endfunction
function z=v(x,y)
    z=y+3*x*y^2-57
endfunction
x=1;
y=3.5;
while u(x,y)~=v(x,y)
    x=x+1;
    y=y-0.5;
end
disp(x,"x=")
disp(y,"y=")
