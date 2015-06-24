clc;
//refer fig 2-22(B)
L_1A=10*1e-3; //in henry
L_1B=10*1e-3; //in henry
c=10*1e-12; //in faraday
k=0.1; //coefficient of coupling
pi=3.14;
L_M=k*sqrt(L_1A*L_1B);
L_eq=L_1A+L_1B+(2*L_M);
f_op=1/(2*pi*sqrt(L_eq*c));
disp(+'Hz',f_op,'f_op =')
