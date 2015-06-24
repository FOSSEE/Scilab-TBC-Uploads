//find power of periodic signal x(t)=exp(j(2t+pi/4))
clc;
//To plot signal*************************//
t=-5:0.01:5;
x=exp(%i*(2.*t+%pi/4));//given signal
plot(t,x);
//***************************************//
t=-50:0.01:50
x=exp(%i*(2.*t+%pi/4));
T=length(t);

//To calculate Energy
xsq=abs(x).^2;//adds squares of all the 'x' values(integrates 'x^2' terms) 
v=sum(xsq);//energy

//To calculate Power 
P=1/T*sum(xsq);//divide by T,to take the average rate of energy(gives power)
disp('watts',P,'Power=');