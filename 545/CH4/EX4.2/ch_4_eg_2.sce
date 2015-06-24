clc
disp("the solution of e.g. 4.2 -->Ordinary Differential Eqn.-Runge Kutta method")
// in this problem dy/dx=-y/(1+x)
x_0=0                 //initial values given
y_0=2
function ydash=fr(x,y),
    ydash=-y/(1+x),
endfunction
for x_0=0:0.01:2.5,
    h=0.01                                    //step increment of 0.01
    f_0=fr(x_0,y_0)
    k1=h*f_0
    k2=h*fr(x_0+h/2,y_0+k1/2)
    k3=h*fr(x_0+h/2,y_0+k2/2)
    k4=h*fr(x_0+h,y_0+k3)
    y_0=y_0+(k1+2*k2+2*k3+k4)/6
end
y_0=y_0-(k1+2*k2+2*k3+k4)/6                    //final value at x=2.5
disp(y_0,"the value of y at x=2.5 using Runge Kutta method is");
