//find power of periodic signal x(t)=10sin(10*pi*t)
clc;
t=-0.5:0.01:0.5;
x=10*sin(10*%pi*t);//given signal
plot(t,x);
n=length(t);

//To calculate Power 
xsq=abs(x).^2;//adds squares of all the 'x' values(integrates 'x^2' terms) 
P=1/n*sum(xsq);//divide by n,to take the average rate of energy(gives power)
disp('watts',P,'Power=');