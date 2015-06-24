clc
disp("the soln of eg 4.7-->Simultaneous O.D.E.")
function dx_dt=fw(t,x,y);
         dx_dt=x+2*y,
endfunction
function dy_dt=fq(t,x,y);
         dy_dt=3*x+2*y
endfunction
y=4,x=6                         //initial values
//solving by Runge-Kutta method
for t=0:.1:.2,
    h=.1                                    //step increment of 0.1
    k1=h*fw(t,x,y)
    l1=h*fq(t,x,y)
    k2=h*fw(t+h/2,x+k1/2,y+l1/2)
    l2=h*fq(t+h/2,x+k1/2,y+l1/2)
    k3=h*fw(t+h/2,x+k2/2,y+l2/2)
    l3=h*fq(t+h/2,x+k2/2,y+l2/2)
    k4=h*fw(t+h,x+k3,y+l3)
    l4=h*fq(t+h,x+k3,y+l3)
    x=x+(k1+2*k2+2*k3+k4)/6
    y=y+(l1+2*l2+2*l3+l4)/6
    end
x=x-(k1+2*k2+2*k3+k4)/6
y=y-(l1+2*l2+2*l3+l4)/6
disp(y,x,"the values of x and y repectively are");
t_an=.2
x_an=4*exp(4*t)+2*exp(-t)
y_an=6*exp(4*t)-2*exp(-t)
disp(y_an,x_an,"the analytical values of x and y are respectively");
