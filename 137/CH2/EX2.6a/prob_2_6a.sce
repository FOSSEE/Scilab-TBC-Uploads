clc;
//Assuming SI units for all quantities
//given signal is x(t)=1
//energy of signal x(t)
t0=0;t1=5;
x=1;
y=integrate('x^2','t',t0,t1);
disp(+'joule',y,'energy of signal x(t)=')
//to find correlation coefficient we have to calculate the energies of different given signals
//1st signal g1(t)=1
g1=1;
e1=integrate('g1^2','t',t0,t1);
disp(+'joule',e1,'energy of signal');
//correltion coefficient 
c1=integrate('g1*x','t',t0,t1);
disp(+'joule',c1/sqrt(y*e1),'correlation coefficient=');