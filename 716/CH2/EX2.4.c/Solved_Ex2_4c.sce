//find power of periodic signal x(t)=3cos(5*w0*t)
clc;
//To plot signal*************************//
t=-5:0.01:5;
w0=0.25*%pi;
x=3*cos(5*w0.*t);//given signal
plot(t,x);
//***************************************//
t=-50:0.01:50;
x=3*cos(5*w0.*t);
T=length(t);

//To calculate Energy
xsq=x.^2;//adds squares of all the 'x' values(integrates 'x^2' terms) 
v=sum(xsq);//energy

//To calculate Power 
xsq=x.^2;
P=1/T*v;//divide by 2T,to take the average rate of energy(gives power)
disp('watts',P,'Power=');