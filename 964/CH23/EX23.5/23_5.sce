clc;
clear;
function y=f(x)
    y=0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5
endfunction
a=0;
b=0.8;
Qt=1.640533;
Q=intg(0,0.8,f);
disp(Q,"Computed=")
disp(abs(Q-Qt)*100/Qt,"Error estimate=")
