clc;
clear;
function y=f(x)
    y=sin(10*x)+cos(3*x);
endfunction
count=1;
for i=1:0.05:5
    val(count)=i;
    func(count)=f(i);
    count=count+1;
end
plot2d(val,func)
xtitle("x vs f(x)",'x','f(x)')