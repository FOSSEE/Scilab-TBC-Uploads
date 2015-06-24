clear;
clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

// Note r=-1 is not the fixed point as radius can't be negative.

r1=0;        //First Fixed Point
r2=1;        //Second Fixed Point

for r=0:0.05:1.1
    f=r*(1-(r^2));
    plot2d(r,f,style=-2)
end

set(gca(),"grid",[2,5])        //Grid on
plot2d(0,0,style=-3)
plot2d(1,0,style=-4)
plot2d(0.5,0,style=-12)
plot2d(1.1,0,style=-13)
xtitle("r(dot) = r * (1 - r^2)","x-Axis (r)","y-Axis (r dot)")
figure
function xd=linear711(t,x)
    xd(1)=(cos(t)*sqrt(x(1)^2+x(2)^2)*(1-x(1)^2-x(2)^2))-(sqrt(x(1)^2+x(2)^2)*sin(t));
    xd(2)=(sin(t)*sqrt(x(1)^2+x(2)^2)*(1-x(1)^2-x(2)^2))+(sqrt(x(1)^2+x(2)^2)*cos(t));
             //x(dot);   x(2) means y.
             //y(dot);   x(1) means x.; 
  endfunction
  bound=[-4,-4,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=16;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:16
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:6000;
     xout=ode(x0,t0,t,linear711);
     plot2d(xout(1,:),xout(2,:));
 end
   xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')