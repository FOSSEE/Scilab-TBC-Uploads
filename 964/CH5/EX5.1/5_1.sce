clc;
clear;
m=68.1;//kg
v=40;//m/s
t=10;//s
g=9.8;//m/s^2
function y=f(c)
    y=g*m*(1-exp(-c*t/m))/c - v;
endfunction
disp("For various values of c and f(c) is found as:")
i=0;
for c=4:4:20
    i=i+1;
    bracket=[c f(c)];
    disp(bracket)
    fc(i)=f(c);
end
c=[4 8 12 16 20]
plot2d(c,fc)
xtitle('f(c) vs c','c','f(c) (m/s)')
