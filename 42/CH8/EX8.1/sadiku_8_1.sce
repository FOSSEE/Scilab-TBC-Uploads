clear;
clc;
m=2,q=3,v=[4 0 3],E=[12 10 0],t=1;
disp(q*E/m,'Acceleration ofthe particle= ');
u=[22 15 3];
modofu=sqrt(22*22+15*15+3*3);
KE=.5*m*(modofu)^2;
disp(KE, 'Kinetic energy= ')