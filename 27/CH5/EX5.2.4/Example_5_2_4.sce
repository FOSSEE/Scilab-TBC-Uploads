clear;
clc;
close;

disp("When the eigen values are complex, then the fixed point is either :")
disp("1.    Center, or")
disp("2.    Spiral.")

function xd=linear524(t,x)
    xd(1)=0*x(1)+x(2);         //x(dot);   x(2) means y.
    xd(2)=-4*x(1)+0*x(2);     //y(dot);   x(1) means x.; 
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
     xout=ode(x0,t0,t,linear524);
     plot2d(xout(1,:),xout(2,:));
 end
   xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')
 figure
 function xd=linear5242(t,x)
    xd(1)=-x(1)-x(2);         //x(dot);   x(2) means y.
    xd(2)=4*x(1)-x(2);     //y(dot);   x(1) means x.; 
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
     xout=ode(x0,t0,t,linear5242);
     plot2d(xout(1,:),xout(2,:));
 end
   xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')