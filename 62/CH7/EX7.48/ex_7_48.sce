clc;
A=[0 1;-6 -5];
b=[0;1];
c=[1 0];
q0=[2;1];
syms t T
//y=c*e^(A*t)*q0+integ(c*e^A*(t-T)*b*x,0,t) 
e=spec(A);//eigen values
b0=e(1)*%e^(e(2)*t)-e(2)*%e^(e(1)*t);
b1=%e^(e(1)*t)-%e^(e(2)*t);
eAt=b0*eye(A)+b1*A;
b0=e(1)*%e^(e(2)*(t-T))-e(2)*%e^(e(1)*(t-T));
b1=%e^(e(1)*(t-T))-%e^(e(2)*(t-T));
eAtT=b0*eye(A)+b1*A;
disp(eAt,"e^(At)");
ceAtq0=c*eAt*q0;
ceAtTq0=c*eAtT*q0;
y=ceAtq0+integ(ceAtTq0*%e^-T,T);
y0=limit(y,T,0);
yt=limit(y,T,t);
Y=yt-y0;
disp(Y,"y(t)=")