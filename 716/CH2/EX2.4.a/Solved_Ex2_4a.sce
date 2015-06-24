//find power and energy of periodic signal x(t)=exp(-2t)*u(t)
clc;
//To plot signal*************************//
t=-5:0.01:5;
x=exp(-2*t).*(t>=0);//given signal
plot(t,x);
//**************************************//
t=-50:0.01:50;
x=exp(-2*t).*(t>=0);
T=length(t);

//To calculate Energy
xsq=x.^2;//adds squares of all the 'x' values(integrates 'x^2' terms) 
v=inttrap(t,xsq);
disp('joules',v,'Energy');

//To calculate Power 
xsq=x.^2;
P=1/T*v;//divide by 2T,to take the average rate of energy(gives power)
disp('watts',P,'Power=');