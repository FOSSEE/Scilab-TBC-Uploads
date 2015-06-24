//Ex 1.11
//Check for peridicity
clc;
T=2*%pi/8;
z=2*T;
t=0:0.001:z
x=%i*exp(%i*8*t);
subplot(2,2,1),plot(x);//the plot shows that the above signal is periodic

T=2*%pi/(-1+%i);
z=2*T;
disp('T cannot be complex so non periodic');
t=0:-0.001:z
x=exp((-1+%i)*abs(t));
subplot(2,2,2),plot(x);//the plot shows that the above signal is not periodic

N=2*%pi/%pi;
z=2*N;
n=0:0.05:z
x=exp(%i*5*%pi*n);//exp(i*(4*pi+pi)*n)=exp(i*pi*n)
subplot(2,2,3),plot2d3(n,x);//the plot shows that the above signal is periodic

k=1;
N=2*%pi*5/2;
z=2*N;
n=0:0.5:z
x=exp((%i*2/5)*(n+(1/3)));
subplot(2,2,4),plot2d3(n,x);//the plot shows that the above signal is periodic