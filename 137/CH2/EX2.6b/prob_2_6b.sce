clc;
//Assuming SI units for all quantities
//given signal is x(t)=1
//energy of signal x(t)
t0=0;t1=5;
x=1;
y=integrate('x^2','t',t0,t1);
disp(+'joule',y,'energy of signal x(t)=');
//to find correlation coefficient we have to calculate the energies of different given signals
g2=.5;
e2=integrate('g2^2','t',t0,t1);
disp(+'joule',e2,'energy of signal');
//correltion coefficient 
c2=integrate('g2*x','t',t0,t1);
disp(c2/sqrt(y*e2),'correlation coefficient=');