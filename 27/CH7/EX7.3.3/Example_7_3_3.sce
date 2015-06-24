clear;
clear;
clc;
close;
set(gca(),"auto_clear","off")        //hold on

//Fixed Point is Stable for determinant(D) > 0 and trace(T) < 0.
//To get limit cycle oscillations there should not be any fixed point 
//near to the limit cycle.

//Thus, only possibilty left as D > 0, to have T > 0.

//Curve between a and b :

for a=0:0.01:0.14
    b1=+sqrt(0.5*(1-2*a+sqrt(1-8*a)));
    b2=+sqrt(0.5*(1-2*a-sqrt(1-8*a)));
    b3=-sqrt(0.5*(1-2*a+sqrt(1-8*a)));
    b4=-sqrt(0.5*(1-2*a-sqrt(1-8*a)));
    plot2d(a,b1,style=-2)
    plot2d(a,b2,style=-3)
    plot2d(a,b2,style=-4)
    plot2d(a,b2,style=-5)
    
    
end
xtitle("The Dividing Line Trace = 0","x-Axis ( a )","y-Axis ( b )")

figure
a=0.08;
b=0.6;
function xd=linear733(t,x)
    xd(1)=-x(1)+a*x(2)+(x(1)^2)*x(2);
    xd(2)=b-a*x(2)-((x(1)^2)*x(2));
  endfunction
  bound=[-1,-1,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=12;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:12
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear733);
     plot2d(xout(1,:),xout(2,:));
 end
   xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')