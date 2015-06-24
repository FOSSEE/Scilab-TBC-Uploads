clc;
clear;
xf=10;//cm
xe=2.5;//cm
//T(0,t)=40; boundary condition
//T(10,t)=200; boundary condition
//f(x)=10; uniform heat source
function y=f(x)
    y=10*(xe-x)/xe;
endfunction
int1=intg(0,xe,f)
function y=g(x)
    y=10*(x-0)/xe;
endfunction
int2=intg(0,xe,g)
disp("The results are:")
disp("0.4*T1-0.4*T2=-(dT/dx)*x1 + c1")
disp(int1,"where c1=")
disp("and")
disp("-0.4*T1+0.4*T2=-(dT/dx)*x2 + c2")
disp(int2,"where c2=")
