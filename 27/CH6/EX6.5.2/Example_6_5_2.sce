clear;
clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//Get x(dot) = y;    y(dot)=x-(x^3);

A1 = [0 1;1 0]        //Jacobian at (0,0)
t1=det(A1)

A2 = [0 1;-2 0]        //Jacobian at (1,0) and (-1,0).
t2=det(A2)
tau2=trace(A2)

disp("Since, t1=-1, thus (0,0) is a SAddle Point.");
disp("As t2=2 and tau2=0, thus (1,0) and (-1,0) are Centers.");


[x y]=meshgrid(-5:0.5:5,-5:0.5:5);
Nx=21;
Ny=21;


for i=1:21
    for j=1:21
        E(i,j) = ((1/2)*(y(i,j)^2)) -((1/2)*(x(i,j)^2)) + ((1/4)*(x(i,j)^4));
        //contour(x,y,E,3);
    end
end

l=-5:0.5:5;
k=-5:0.5:5;
plot3d(l,k,E);
figure
subplot(331)
contour2d(l,k,E,2);

subplot(335)
for x=-2:0.1:2
    V=((-1/2)*(x^2))+((1/4)*(x^4));
    plot2d(x,V,style=-2)
end
subplot(339)
function xd=linear652(t,x)
    xd(1)=x(2);
    xd(2)=x(1)-x(1)^3;
      //x(dot);   x(2) means y.
      //y(dot);   x(1) means x.; 
  endfunction
  bound=[-4,-4,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=16;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:35
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear652);
     plot2d(xout(1,:),xout(2,:));
 end
 xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')