clc;
R=1*1e3; //in ohm
pi=3.14;
c=0.1*1e-6; //in faraday
f_op=1/(2*pi*R*c*sqrt(6));
disp(+'Hz',f_op,'f_op =');
