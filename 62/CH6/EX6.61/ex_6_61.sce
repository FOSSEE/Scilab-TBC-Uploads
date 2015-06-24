clear;
close;
clc;
T1=10;
wM=100;
N=ceil(wM*T1/%pi);
dw=2*wM/N;
dt=%pi/wM;
WN=exp(-%i*2*%pi/N);
n=0:N-1;
x=%e^-(n*dt);
k=0:10;
Xk=dt*x*exp(-%i*2*%pi*n'*k/N);
disp(Xk(find(k==0)),Xk(find(k==1)),Xk(find(k==10)),"X[0] X[1] X[10] from X[k]")
w=0:dw:10*dw;
Xw=ones(1,length(w))./(%i*w+1);
disp(Xw(find(w==0)),Xw(find(w==dw)),Xw(find(w==10*dw)),"X(0) X(dw) X(10*dw) from X(w)")
disp("it can be seen that X[k] gives a good approximation to X(w)") 