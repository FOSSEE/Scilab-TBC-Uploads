clc;
A=[-2 1;1 -2];
q0=[.5;1];
//Q=e^(A*t)*q0+integ(e^A*(t-T)*b*x,T,t0,t)
X=0;
//therefore integ term is zero
e=spec(A);//eigen values
b0=e(1)*%e^(e(2)*t)-e(2)*%e^(e(1)*t);
b1=%e^(e(1)*t)-%e^(e(2)*t);
eAt=b0*eye(A)+b1*A;
Q=eAt*q0;
disp(Q,"thus [vc1(t)  vc2(t)]=");