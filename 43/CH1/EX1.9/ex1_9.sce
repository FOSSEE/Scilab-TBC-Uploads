//Ex 1.9
//Check For periodicity
clc;
//pi=22/7
k=1;
N=2*7*k/5;
z=2*N;
n=0:.1:z //Defining discrete time
x=sin((5*%pi*n/7)+1); //sinusoid function
subplot(3,2,1),plot2d3(n,x) //ploting the sinusoid showing it as periodic 2pik=5piN/7
disp('the plot shows the above signal is periodic');

k=1;
N=2*%pi*k*6;
z=2*N;
n=0:1:z //Defining discrete time
x=cos((n/6)-%pi);
subplot(3,2,2),plot2d3(n,x);//the plot shows the above signal is periodic
disp('the plot shows the above signal is periodic');

k=1;
N=sqrt(2*k*2);
z=2*N;
n=0:1/100:z //Defining discrete time
x=cos(((n.^2)*%pi)/2);
subplot(3,2,3),plot(x);//the plot shows that the above signal is not periodic
disp('the plot shows the above signal is not periodic');

k=1;
N=2*k;
z=2*N;
n=0:1/100:2*z //Defining discrete time
x=cos(n*%pi/3).*cos(2*%pi*n/3);
subplot(3,2,4),plot(x);//the plot shows that the above signal is periodic
disp('the plot shows the above signal is periodic');

k=1;
N=2*k*8;
z=2*N;
n=0:1/100:z //Defining discrete time
x=2*cos(n*%pi/4)+sin((n*%pi/2)-(%pi/3))-2*cos((n*%pi/8)+(%pi/3));
subplot(3,1,3),plot(x);//the plot shows that the above signal is periodic
disp('the plot shows the above signal is periodic');