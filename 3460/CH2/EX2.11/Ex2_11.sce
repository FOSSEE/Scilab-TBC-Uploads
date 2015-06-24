clc;
R1=10*1e3 //in ohm
R2=20*1e3 //in ohm
c1=0.5*1e-9 //in Faraday
c2=1*1e-9 //in Faraday
pi=3.14
f_op=1/(2*pi*sqrt(R1*R2*c1*c2))
disp(+'Hz',f_op,'f_op =')
