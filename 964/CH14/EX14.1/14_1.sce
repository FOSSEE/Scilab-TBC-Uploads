clc;
clear;
function z=f(x,y)
    z=y-x-(2*(x^2))-(2*x*y)-(y^2);
endfunction
x1=-2;
x2=2;
y1=1;
y2=3;
fmax=-1*10^(-15);
n=10000;
for j=1:n
    r=rand(1,2);
    x=x1+(x2-x1)*r(1,1);
    y=y1+(y2-y1)*r(1,2);
    fn=f(x,y);
    if fn>fmax then
        fmax=fn;
        xmax=x;
        ymax=y;
    end
    if modulo(j,1000)==0 then
    
    disp(j,"Iteration:")
    disp(x,"x:")
    disp(y,"y:")
    disp(fn,"function value:")
    disp("------------------------------------------")
    end
end
