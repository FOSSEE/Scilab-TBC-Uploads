clc;
A=[0 1;-6 -5];
syms t
//we know %e^(at)=b0*I+b1*A;
e=spec(A);//eigen values
b0=e(1)*%e^(e(2)*t)-e(2)*%e^(e(1)*t);
b1=%e^(e(1)*t)-%e^(e(2)*t);
eAt=b0*eye(A)+b1*A;
disp(eAt,"e^(At)")