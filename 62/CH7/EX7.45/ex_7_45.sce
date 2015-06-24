clc;
syms t
A=[0 -2 1;0 0 3;0 0 0];
//we know %e^(at)=b0*I+b1*A+b2*A^2; 
e=spec(A);//eigen values
b2=t^2*%e^(e(3)*t);
b1=t*%e^(e(2)*t)-b2*2*e(2);
b0=%e^(e(1)*t)-b1*e(1)-b2*e(1)^2;
eAt=b0*eye(A)+b1*A+b2*A^2;
disp(eAt,"e^(At)")