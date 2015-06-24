clear;
clc;
close;

//On linearization we got the following Jacobian "A"

A=[0 -1;1 0];
t=det(A);
tau=trace(A);

disp("Since tau = 0 and t>0, thus from chapter 5, (0,0) is a Center")
disp("And this does not depends on value of a ")

a=-1;
function xd=linear632(t,x)
    xd(1)=-x(2)+ a*x(1)*(x(1)^2+x(2)^2);         //x(dot);   x(2) means y.
    xd(2)=x(1)+a*x(2)*(x(1)^2+x(2)^2);     //y(dot);   x(1) means x.; 
  endfunction
  bound=[-4,-4,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=5;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:5
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear632);
     plot2d(xout(1,:),xout(2,:));
 end
   xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')
 figure
 a=1;
function xd=linear6322(t,x)
    xd(1)=-x(2)+ a*x(1)*(x(1)^2+x(2)^2);         //x(dot);   x(2) means y.
    xd(2)=x(1)+a*x(2)*(x(1)^2+x(2)^2);     //y(dot);   x(1) means x.; 
  endfunction
  bound=[-4,-4,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=35;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:35
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear6322);
     plot2d(xout(1,:),xout(2,:));
 end
   xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')
