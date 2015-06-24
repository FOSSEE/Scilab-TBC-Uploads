clc;
//Assuming SI units for all quantities
//given signal is x(t)=1
//energy of signal x(t)
t0=0;t1=5;
x=1;
y=integrate('x^2','t',t0,t1);
disp(+'joule',y,'energy of signal x(t)=');
//to find correlation coefficient we have to calculate the energies of different given signals
g3=-1;
e3=integrate('g3^2','t',t0,t1);
disp(+'joule',e3,'energy of signal');
//correltion coefficient 
c3=integrate('g3*x','t',t0,t1);
disp(c3/sqrt(y*e3),'correlation coefficient=');