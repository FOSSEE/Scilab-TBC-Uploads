clear
clc

//Example 20.4
disp('Example 20.4')

J=15;
Ts=1;//Sampling time ie delta_T
N=80;//Model Order
s=%s;
G=syslin('c',5/(15*s+1));//Transfer function
t=0:Ts:N*Ts;
u_sim=ones(1,length(t));
u_sim(1:3)=[0 0 0]; //input delay to account for 2 min delay in G
S=csim(u_sim,t,G)';//generating step response model for real plant
//plot(t,S);
S(1)=[];
T=100;//simulation time

n=T/Ts*2+1; //no. of discrete points in our domain of analysis
//Input initialization T min is the Time for simulation
//We take a few u values in negative time to facilitate 
//usage of step response model
u=zeros(n,1);
d=zeros(n,1);
delta_u=zeros(n,1);
delta_u(101+2)=1; //Step change at t=2 min
u=cumsum(delta_u);
delta_d=zeros(n,1);
delta_d(101+8)=0.15;//disturbance t=8 min
d=cumsum(delta_d);

yhat=zeros(n,1); //J step ahead predictions
ytilda=zeros(n,1); //J step ahead predictions corrected
b=zeros(n,1); //corrections

t=-(n-1)/2:Ts:(n-1)/2;

for k=(n-1)/2+1-J:n-J
    yhat(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N);
    //Predicted y  Eqn 20-10
    y(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N)+...
            S(1:N-1)'*flipdim(delta_d(k+J-N+1:k+J-1),1)+S(N)*d(k+J-N);
    //Actual values of the process
    b(k+J)=y(k)-yhat(k); //Note that there is a delay in corrections
    //which is opposite of prediction
end
ytilda=b+yhat;//calculation of corrected y
plot(t,y,'-',t,yhat,'-.',t,ytilda,'--');
set(gca(),"data_bounds",[0 100 0 6]); //putting bounds on display
l=legend("y","$\hat y$","$\tilde y$",position=4);
l.font_size=5;
xtitle("Example 20.4","Time(min)","$y$");
a=get("current_axes");
c=a.y_label;c.font_size=5;


//======Part b=====//
G2=syslin('c',4/(20*s+1));//Transfer function
t2=0:Ts:N*Ts;
u_sim=ones(1,length(t2));
u_sim(1:3)=[0 0 0]; //input delay to account for 2 min delay in G
S2=csim(u_sim,t2,G2)';//generating step response model for model
//plot(t2,S);
S2(1)=[];

yhat=zeros(n,1); //J step ahead predictions
ytilda=zeros(n,1); //J step ahead predictions corrected
b=zeros(n,1); //corrections

for k=(n-1)/2+1-J:n-J
    yhat(k+J)=S2(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S2(N)*u(k+J-N);
    //Predicted y  Eqn 20-10
    y(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N)+...
            S(1:N-1)'*flipdim(delta_d(k+J-N+1:k+J-1),1)+S(N)*d(k+J-N);
    //Actual values of the process
    b(k+J)=y(k)-yhat(k); //Note that there is a delay in corrections
    //which is opposite of prediction
end
ytilda=b+yhat;//calculation of corrected y
scf();
plot(t,y,'-',t,yhat,'-.',t,ytilda,'--');
set(gca(),"data_bounds",[0 100 0 6]); //putting bounds on display
l=legend("y","$\hat y$","$\tilde y$",position=4);
l.font_size=5;
xtitle("Example 20.4","Time(min)","$y$");
a=get("current_axes");
c=a.y_label;c.font_size=5;



