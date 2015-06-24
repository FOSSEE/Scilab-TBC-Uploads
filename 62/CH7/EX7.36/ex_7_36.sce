clc;
A=[0 1;-1/8 3/4];
B=[0;1];
q2=[0 ;0];
q0=[0;1];
//we know q2=A^2*q0+[B A*B]*X
X=inv([B A*B])*[q2-A^2*q0];
disp(X,"therefore [x(1);x(0)]=")