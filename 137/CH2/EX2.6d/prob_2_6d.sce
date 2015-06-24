clc;
//Assuming SI units for all quantities
//given signal is x(t)=1
//energy of signal x(t)
t0=0;t1=5;
x=1;
y=integrate('x^2','t',t0,t1);
disp(+'joule',y,'energy of signal x(t)=');
//to find correlation coefficient we have to calculate the energies of different given signals
e4=integrate('((%e)^(-t/5))^2','t',t0,t1);
disp(+'joule',e4($),'energy of signal');
//correltion coefficient 
c4=integrate('((%e)^(-t/5))*x','t',t0,t1);
disp(c4($)/sqrt(y*e4),'correlation coefficient=');