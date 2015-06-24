clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//Let lambda1<lambda2<0

for x=-20:0.5:20
    y1 = x;
    y=0;
    x1=0;
    plot2d(x,y1,style=-2)
    plot2d(x,y,style=-4)
    plot2d(x1,x,style=-4)
end

for x=-5:0.5:5
    y2=-4*x;
    plot2d(x,y2,style=-2)
end
 xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')
figure
function xd=linear523(t,x)
    xd(1)=-x(1)-x(2);         //x(dot);   x(2) means y.
    xd(2)=0*x(1)-2*x(2);     //y(dot);   x(1) means x.; 
  endfunction
  bound=[-14,-25,14,25];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=10;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:10
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear523);
     plot2d(xout(1,:),xout(2,:));
 end
  xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')