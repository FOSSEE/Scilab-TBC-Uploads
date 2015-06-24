clc;
clear;
function y=f(x)
    y=(0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5)
endfunction
tval=1.640533;
x=[0 0.12 0.22 0.32 0.36 0.4 0.44 0.54 0.64 0.7 0.8];
for i=1:11
    func(i)=f(x(i));
end
l1=(x(2)-x(1))*((f(x(1))+f(x(2)))/2);
l2=(x(4)-x(2))*(f(x(4))+4*f(x(3))+f(x(2)))/6;
l3=(x(7)-x(4))*(f(x(4))+3*(f(x(5))+f(x(6)))+f(x(7)))/8;
l4=(x(9)-x(7))*(f(x(7))+4*f(x(8))+f(x(9)))/6;
l5=(x(10)-x(9))*((f(x(10))+f(x(9)))/2);
l6=(x(11)-x(10))*((f(x(11))+f(x(10)))/2);
l=l1+l2+l3+l4+l5+l6;
disp(l,"l=")
Et=tval-l;//error
et=Et*100/tval;//percent relative error
disp(Et,"The Error Et=")
disp("%",et,"The percent relative error et=")
