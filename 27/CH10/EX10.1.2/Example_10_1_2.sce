//Example 10.1.2 Page 351
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz
clear;
clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

for x=-4:0.2:4
    y1=sin(x);
    y2=x;
    plot2d(x,y1,style=-2)
    plot2d(x,y2,style=-2)
end

disp("By zooming the above graph we observe that only fixed point is x=0.")

lambda=cos(0)            //f'(x*)=cos(0)

disp("Since, lambda=1; therefore we can not say about stability of x*=0.")
disp("So, see stability by cobwebs diagram, as shown in book.")

//Cobweb Diagram :-

figure
for x=0:0.1:(%pi/2)
    y1=sin(x);
    y2=x;
    plot2d(x,y1,style=-4)
    plot2d(x,y2,style=-4)
end

x0=%pi/2;
for y=0:0.2:sin(x0)
    x=x0;
    plot2d(x,y,style=-3)
end
dx1=(sin(x0)-x0)/5;
for x=x0:dx1:sin(x0)
    y=sin(x0);
    plot2d(x,y,style=-3)
end
dy1=(sin(sin(x0))-sin(x0))/5;
for y=sin(x0):dy1:sin(sin(x0))
    x=sin(x0);
    plot2d(x,y,style=-3)
end
dx2=(sin(sin(x0))-sin(x0))/5;
for x=sin(x0):dx2:sin(sin(x0))
    y=sin(sin(x0));
    plot2d(x,y,style=-3)
end
x=sin(sin(x0));
dy2=(sin(x)-x)/5;
for y=x:dy2:sin(x)
    x=sin(sin(x0));
    plot2d(x,y,style=-3)
end
y=sin(sin(sin(x0)));
dx3=-(sin(sin(x0))-y)/5;
for x=sin(sin(x0)):dx3:y
    //y=sin(x);
    
    plot2d(x,y,style=-3)
end
xtitle("Cobweb Diagram","x-Axis ( xn)","y-Axis ( xn+1 )")
//End of Example.  