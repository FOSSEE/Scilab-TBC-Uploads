clc;
clear;
function y=f(x)
    y=x-cos(x)
endfunction
x1=0;
if f(x1)<0 then
    x2=x1+0.001;
    while f(x2)<0
        x2=x2+0.001;
    end
elseif x2=x1+0.001;
    while f(x2)>0
        x2=x2+0.001;
    end
else disp(x1,"The root is=")
end
x=x2-(x2-x1)*f(x2)/(f(x2)-f(x1));
disp(x,"The root is=")