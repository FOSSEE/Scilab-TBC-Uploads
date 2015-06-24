clear;
clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

a=0.4;
b=0.8;
for x=0:0.1:3
    y1=a*x;
    y2=(x^2)/(b*(1+x^2));
    plot2d(x,y1,style=-2)
    plot2d(x,y2,style=-3)
end

// Classification of fixed points :

A1=[-a 1;0 -b]                //Jacobian at (0,0)
T=trace(A1)                    //Trace of A
D=det(A1)                      //Determinant of A

disp("Since, D>0, T<0 , orign is always a fixed point.")

//Now using the arguments given in book and the figure obtained through this example, we conclude :

disp("Middle Fixed Point lies between 0<x*<1, Thus is a Saddle Point.")
disp("The Thied fixed point is with x*>1, Thus always a stable node.")

xtitle("Nullclines--Showing Intersection of x(dot) and y(dot)","x-Axis ( x )","y-Axis ( y )")
figure
a=0.4;
b=0.8;
  function xd=linear811(t,x)
    xd(1)=-a*x(1)+x(2);
    xd(2)=((x(1)^2)/(1+x(1)^2))-b*x(2);
             //x(dot);   x(2) means y.
             //y(dot);   x(1) means x.; 
  endfunction
  bound=[0,0,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=20;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:20
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear811);
     plot2d(xout(1,:),xout(2,:));
 end
  xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')