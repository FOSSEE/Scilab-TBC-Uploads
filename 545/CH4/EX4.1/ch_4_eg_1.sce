clc
disp("the solution of e.g. 4.1 -->Integration of Ordinary Differential Equation")
// in this problem dy/dx=x+y
x_0=0                 //initial values given
y_0=0

function ydash=fs(x,y),
    ydash=x+y,
endfunction

for x_0=0:0.1:0.2,
    h=0.1                                    //step increment of 0.1
    f_0=fs(x_0,y_0)
    k1=h*f_0
    k2=h*fs(x_0+h/2,y_0+k1/2)
    k3=h*fs(x_0+h/2,y_0+k2/2)
    k4=h*fs(x_0+h,y_0+k3)
    y_0=y_0+(k1+2*k2+2*k3+k4)/6
end
y_0=y_0-(k1+2*k2+2*k3+k4)/6                    //to get value at x=0.2
disp(y_0,"the value of y at x=.2 using Runge Kutta method is");
ae=exp(x_0)-x_0-1                                  //analytical eqn given
disp(ae,"the value of y at x=0.2 from analytical eqn is");