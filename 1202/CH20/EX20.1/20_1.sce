clear
clc

//Example 20.1
disp('Example 20.1')


K=5;
tau=15;//min
theta=2;//min
Ts=1;//Sampling period
k=[0:79]';//samples
N=80;


//From  eqn 20-5
S=zeros(N,1);
S=K*(1-exp(-(k*Ts-theta)/tau));
S(1:(theta+1),1)=0;//delay


//Step change
M=3;

//Calculating step response from Eqn 20-4
step=3;//step change occurs at t=3 min
i=[(theta+1):90]';
yi=[zeros(theta+step,1);K*M*(1-exp(-(i*Ts-theta)/tau));]

plot2d(yi,style=-4);
xtitle("$Ex\ 20.1$","Time(min)","y")

