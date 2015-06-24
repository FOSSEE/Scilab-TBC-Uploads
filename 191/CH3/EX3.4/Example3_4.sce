//checking for the convergence and divergence of different functions we are getting after rearrangement of the given quadratic equation x^2-2*x-8=0.
//after first type of arrangement we get a function gx=(2*x+8)^(1/2).for this we have..

clear;
clc;
close();
alpha=4;
I=alpha-1:alpha+1;//required interval
deff('[f1]=gx(x)','f1=(2*x+8)^(1/2)');
deff('[f2]=diffgx(x)','f2=(2*x+8)^(-0.5)');
x=linspace(3,5);
subplot(2,1,1);
plot(x,(2*x+8)^(1/2))
plot(x,x)
x0=5;
if diffgx(I)>0
  disp('Errors in two consecutive iterates are of same sign so convergence is monotonic')
end
if abs(diffgx(x0))<1
  disp('So this method converges')
end

//after second type of arrangement we get a function gx=(2*x+8)/x.for this we have..

deff('[f1]=gx(x)','f1=(2*x+8)/x');
deff('[f2]=diffgx(x)','f2=(-8)/(x^2)');
x=linspace(1,5);
for i=1:100
  y(1,i)=2+8/x(1,i);
end
subplot(2,1,2);
plot(x,y)
plot(x,x)
x0=5;
if diffgx(I)<0
  disp('Errors in two consecutive iterates are of opposite sign so convergence is oscillatory')
end
if abs(diffgx(x0))<1
  disp('So this method converges')
end
