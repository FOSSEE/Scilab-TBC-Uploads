//Example 2.4.1 Page 25
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz

clear;
clc;
close;
set(gca(),"auto_clear","off")    //hold on


disp("When x(double dot) < 0 then =>  Fixed Point is Stable.")
disp("When x(double dot) > 0 then =>  Fixed Point is Unstable.")

//x(dot) = f(x) = sin(x) =0  =>  x* = k*pi

for k= -5*(%pi):%pi:5*(%pi)
    f1 = cos(k)
    plot2d(k,f1,style=-4)
end

for x= -5*(%pi):0.2:5*(%pi)
    f = sin(x);
    plot2d(x,f,style=-2)
end
set(gca(),"grid",[2,5])
xtitle("f(dot) (x*) and sin (x)","x-Axis","y-Axis (Sin(x))")