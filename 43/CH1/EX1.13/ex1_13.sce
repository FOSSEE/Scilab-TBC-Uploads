//Ex 1.13
//Check for periodicity
clc;
T=2*%pi/6;
t=0:0.001:T*2
x=cos((6*t)+%pi/3);
subplot(3,2,1),plot(x);
disp('the plot shows that the above signal is periodic');

T=2*%pi/(%i*%pi);
t=0:0.001:T*2
x=exp(%i*(%pi*abs(t-1)));//exp(%i*(%pi*t-1))=exp(%i*%pi*t)/exp(%i)
//since the period is a complex no so non periodic
disp('T cannot be complex so non periodic T=2*%pi/(%i*%pi)');

//pi=22/7
T=2*%pi/4;//calc the fundamental period
z=2*T;
t=0:1/100:z
x=(cos(2*t+%pi/3))^2; //sinusoid function
subplot(3,2,2),plot(x) 
disp('the plot shows that the above signal is periodic');

k=1;
N=2*k*7/6;
z=2*N;
n=0:1/100:z 
x=cos((6*%pi*n/7)+1);
subplot(3,2,3),plot(x);//the plot shows that the above signal is periodic
disp('the plot shows that the above signal is periodic');

k=1;
N=2*%pi*k*8;
z=2*N;
n=0:1/100:z 
x=sin((n/8)-%pi);
subplot(3,2,4),plot(x);//the plot shows that the above signal is periodic
disp('the plot shows that the above signal is periodic');

k=1;
N=2*k*12;//2*cos(n*%pi/4).*cos(n*%pi/3)=cos(7*n*%pi/12)-cos(n*%pi/12)
z=2*N;
n=0:1/100:z 
x=2*cos(n*%pi/4).*cos(n*%pi/3);
subplot(3,1,3),plot(x);//the plot shows that the above signal is periodic
disp('the plot shows the above signal is periodic');