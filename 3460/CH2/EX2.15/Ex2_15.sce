clc;
c1=0.1*1e-9; //in faraday
c2=1*1e-9; //in faraday
L1=10*1e-3; //in henry
pi=3.14;
c_eq=(c1*c2)/(c1+c2);
f_op=1/(2*pi*sqrt(L1*c_eq));
disp(+'Hz',f_op,'f_op =')
