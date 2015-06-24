clear;
clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//f = x(dot)
//g = y(dot)
//Obtain Jacobian as :
//J=[df/dx  df/dy; dg/dx  dg/dy]
//Thus, J=[mew-3*x^2  0; 0  -1]
mew=2;
subplot(221)
for x=-2:0.1:2
    y1=(mew*x)-x^3;
    y2=0;
    plot2d(x,y1,style=-2)
    plot2d(x,y2,style=-3)
end
xtitle("Nullclines--Showing Intersection of x(dot) and y(dot) for mew > 0","x-Axis ( x )","y-Axis ( y )")
//Stabilities for mew >0
A1=[mew 0;0 -1]            //Jacobian at (0,0)
T1=trace(A1)
D1=det(A1)
A2=[-2*mew 0;0 -1]        //Jacobian at (+sqrt(mew),0) and (-sqrt(mew),0)
T2=trace(A2)
D2=det(A2)
Det = (T2^2) - 4*D2

disp("Since D1<0, Thus (0,0) is a Saddle Point.")
disp("Since T2<0, D2>0 and Det>0, thus (+sqrt(mew),0) and (-sqrt(mew),0) are stable points.")
subplot(224)
mew=-2;
for x=-2:0.1:2
    y1=(mew*x)-x^3;
    y2=0;
    plot2d(x,y1,style=-2)
    plot2d(x,y2,style=-3)
end
xtitle("Nullclines--Showing Intersection of x(dot) and y(dot) for mew < 0","x-Axis ( x )","y-Axis ( y )")
// Classification of fixed points :

A3=[mew 0;0 -1]                //Jacobian at (0,0)
T3=trace(A3)                    //Trace of A
D3=det(A3)                      //Determinant of A
Det3=T3^2 - 4*D3
disp("Since, D>0, T<0 , and Det3>0 orign is a stable fixed point.")


//Note Stabilities can be deduced from the figures also as done in previous chapters.
figure
mew=-4;
  function xd=linear812(t,x)
    xd(1)=mew*x(1)-(x(1)^3);
    xd(2)=-x(2);
             //x(dot);   x(2) means y.
             //y(dot);   x(1) means x.; 
  endfunction
  bound=[-4,-4,4,14];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=10;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:10
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear812);
     plot2d(xout(1,:),xout(2,:));
 end
  xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')
