clear;
clc;
close;

A1=[-1 0;0 -2]    //Jacobian at (0,0)

t1=det(A1)

tau1=trace(A1)
d1=((tau1)^2) - 4*t1

A2=[2 0;0 -2]    //Jacobian at (1,0) and (-1,0)
t2=det(A2)

disp("So from Chapter 5, we come to following conclusion :")
disp("1. As t1>0 and tau1<.0 and d1>0 --> Thus (0,0) is Stable Node.")
disp("2. As t2<0 --> Thus, only possibility is Saddle points.")

function xd=linear611(t,x)
    xd(1)=-(x(1))+x(1)^3;         //x(dot);   x(2) means y.
    xd(2)=-2*x(2);     //y(dot);   x(1) means x.; 
  endfunction
  bound=[-4,-4,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=15;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:15
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear611);
     plot2d(xout(1,:),xout(2,:));
 end
  xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')