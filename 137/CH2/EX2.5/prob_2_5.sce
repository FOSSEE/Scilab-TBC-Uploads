clc;
//Assuming SI units for all quantities
//page no 33
//exa 2.5a
//approximation of square signal to sine signal with minimum energy
t=[0:.1:2*%pi];
t0=0;t1=2*%pi;
y=integrate('(sin(t))^2','t',t0,t1);
disp(+'joule',y($),'energy of sine signal=');
//to calculate value of c
t2=0;t3=%pi;
g=integrate('sin(t)','t',t2,t3);
t4=%pi;t5=2*%pi;
h=integrate('-sin(t)','t',t4,t5);
disp((g($)+h($))/%pi,"value of c=");