clear
clc

//Example 20.5
disp('Example 20.5')

//=============Part(a)========//
//=============Part(a)========//
//=============Part(a)========//
//=============Part(a)========//
//=============Part(a)========//

Ts=1;//Sampling time ie delta_T
N=70;//Model Order
s=%s;
G=syslin('c',1/(5*s+1)/(10*s+1));//Transfer function
t=0:Ts:(N-1)*Ts;
u_sim=ones(1,length(t));
//There is automatically an input delay of one unit in csim function
S=csim(u_sim,t,G)';//generating step response model for real plant
//plot(t,S);
T=80;//simulation time

//Let the three simulations correspond to
//MPC1==> P=3,M=1
//MPC2==> P=4,M=2
///PID==> The PID controller

P1=3;M1=1;
P2=4;M2=2;
S1=S(1:P1);//MPC-1
S2=[S(1:P2) [0;S(1:P2-1)]];//MPC-2

//SISO system
Q=1;
R=0;//No move suppression

Kc1=inv(S1'*Q*S1+R*eye(M1,M1))*S1'*Q;//Eqn20-57  MPC1
Kc2=inv(S2'*Q*S2+R*eye(M2,M2))*S2'*Q;//Eqn20-57   MPC2

mprintf('\nFor P=3 and M=1,   \nKc=\n    [%f %f %f]\n',Kc1)
mprintf('\nFor P=4 and M=2,\nKc=')
disp(Kc2)

//=============Part(b)========//
//=============Part(b)========//
//=============Part(b)========//
//=============Part(b)========//
//=============Part(b)========//
//=============Part(b)========//

//=============Part(b) MPC-1========//
n=T/Ts*2+1; //no. of discrete points in our domain of analysis
//Input initialization T is the Time for simulation
//We take a few u values in negative time to facilitate 
//usage of step response model
u=zeros(n,1);
d=zeros(n,1);
delta_u=zeros(n,1);
//delta_u(101+2)=1; //Step change at t=2 min
u=cumsum(delta_u);
delta_d=zeros(n,1);
//delta_d(101+8)=0.15;//disturbance t=8 min
d=cumsum(delta_d);

y=zeros(1,n);//Actual values
yhat=zeros(1,n); //predicted value
ydot=zeros(P1,n); //Unforced predictions
ydottilde=zeros(P1,n); //Corrected unforced predictions
yr=ones(P1,n);//reference trajectory(same as setpoint)
edot=zeros(P1,n);//predicted unforced error

t=-(n-1)/2:Ts:(n-1)/2;

for k=(n-1)/2+1:n-P1
    
    //Unforced predictions
    for J=1:P1
        ydot(J,k+1)=S(J+1:N-1)'*flipdim(delta_u(k+J-N+1:k-1),1)+S(N)*u(k+J-N);
    end

    //Actual values of the process
    J=0;
    y(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N)+...
            S(1:N-1)'*flipdim(delta_d(k+J-N+1:k+J-1),1)+S(N)*d(k+J-N);

    //Predicted value of the process
    J=0;
    yhat(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N);

    //Corrected prediction for unforced case
    ydottilde(:,k+1)=ydot(:,k+1)+ones(P1,1)*(y(k)-yhat(k));
    
    //Predicted unforced error   Eqn20-52
    edot(:,k+1)=yr(:,k+1)-ydottilde(:,k+1);
    
    //Control move
    delta_u(k)=Kc1*edot(:,k+1);
    u(k)=u(k-1)+delta_u(k);
    
end
subplot(1,2,1);
plot(t,y,'black-');
subplot(1,2,2);
plot2d2(t,u);

//=============Part(b) MPC-2========//
n=T/Ts*2+1; //no. of discrete points in our domain of analysis
//Input initialization T is the Time for simulation
//We take a few u values in negative time to facilitate 
//usage of step response model
u=zeros(n,1);
d=zeros(n,1);
delta_u=zeros(n,1);
//delta_u(101+2)=1; //Step change at t=2 min
u=cumsum(delta_u);
delta_d=zeros(n,1);
//delta_d(101+8)=0.15;//disturbance t=8 min
d=cumsum(delta_d);

y=zeros(1,n);//Actual values
yhat=zeros(1,n); //predicted value
ydot=zeros(P2,n); //Unforced predictions
ydottilde=zeros(P2,n); //Corrected unforced predictions
yr=ones(P2,n);//reference trajectory(same as setpoint)
edot=zeros(P2,n);//predicted unforced error

t=-(n-1)/2:Ts:(n-1)/2;

for k=(n-1)/2+1:n-P2
    
    //Unforced predictions
    for J=1:P2
        ydot(J,k+1)=S(J+1:N-1)'*flipdim(delta_u(k+J-N+1:k-1),1)+S(N)*u(k+J-N);
    end

    //Actual values of the process
    J=0;
    y(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N)+...
            S(1:N-1)'*flipdim(delta_d(k+J-N+1:k+J-1),1)+S(N)*d(k+J-N);

    //Predicted value of the process
    J=0;
    yhat(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N);

    //Corrected prediction for unforced case
    ydottilde(:,k+1)=ydot(:,k+1)+ones(P2,1)*(y(k)-yhat(k));
    
    //Predicted unforced error   Eqn20-52
    edot(:,k+1)=yr(:,k+1)-ydottilde(:,k+1);
    
    //Control move
    delta_u(k)=Kc2(1,:)*edot(:,k+1);
    u(k)=u(k-1)+delta_u(k);
    
end
subplot(1,2,1);
plot(t,y,'-.');
set(gca(),"data_bounds",[0 60 0 1.25]); //putting bounds on display
l=legend("MPC(P=3,M=1)","MPC(P=4,M=2)",position=4);
xtitle("Process Output","Time(min)","$y$");
a=get("current_axes");
c=a.y_label;c.font_size=5;

subplot(1,2,2);
plot2d2(t,u,style=2);



//=============Part(b) PID========//
n=T/Ts*2+1; //no. of discrete points in our domain of analysis
//Input initialization T is the Time for simulation
//We take a few u values in negative time to facilitate 
//usage of step response model
u=zeros(n,1);
d=zeros(n,1);
delta_u=zeros(n,1);
delta_d=zeros(n,1);
//delta_d(101+8)=0.15;//disturbance t=8 min
d=cumsum(delta_d);

y=zeros(n,1);//Actual values
ysp=1;//setpoint
e=zeros(n,1);//error
delta_e=zeros(n,1);//error

t=-(n-1)/2:Ts:(n-1)/2;

//PID settings
Kc=2.27;taui=16.6;tauD=1.49;

for k=(n-1)/2+1:n-1
    //Actual values of the process
    J=0;
    y(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N)+...
            S(1:N-1)'*flipdim(delta_d(k+J-N+1:k+J-1),1)+S(N)*d(k+J-N);
    //error
    e(k)=ysp-y(k);
    delta_e(k)=e(k)-e(k-1);
    
    //Controller move----Digital PID----Eqn 7-28 Pg 136 (Velocity form)
    u(k)=u(k-1)+Kc*([delta_e(k,1)+e(k,1)*Ts/taui+tauD/Ts*(e(k)-2*e(k-1)+e(k-2))]);
    delta_u(k)=u(k)-u(k-1);    
end
subplot(1,2,1);
plot(t,y,'red--');
set(gca(),"data_bounds",[0 60 0 1.25]); //putting bounds on display
l=legend("MPC (P=3,M=1)","MPC (P=4,M=2)","PID controller",position=4);
xtitle("Process Output","Time(min)","$y$");
a=get("current_axes");
c=a.y_label;c.font_size=5;

subplot(1,2,2);
plot2d2(t,u,style=5);
set(gca(),"data_bounds",[0 30 -100 100]); //putting bounds on display
l=legend("MPC (P=3,M=1)","MPC (P=4,M=2)","PID controller",position=4);
xtitle("Controller Output","Time(min)","$u$");
a=get("current_axes");
c=a.y_label;c.font_size=5;


//=============Part(c)========//
//=============Part(c)========//
//=============Part(c)========//
//=============Part(c)========//
//=============Part(c)========//
//=============Part(c)========//
//=============Part(c)========//

//=============Part(c) MPC-1========//
n=T/Ts*2+1; //no. of discrete points in our domain of analysis
//Input initialization T is the Time for simulation
//We take a few u values in negative time to facilitate 
//usage of step response model
u=zeros(n,1);
d=zeros(n,1);
delta_u=zeros(n,1);
u=cumsum(delta_u);
delta_d=zeros(n,1);
delta_d((n-1)/2+1)=1;//disturbance t=0 min
d=cumsum(delta_d);

y=zeros(1,n);//Actual values
yhat=zeros(1,n); //predicted value
ydot=zeros(P1,n); //Unforced predictions
ydottilde=zeros(P1,n); //Corrected unforced predictions
yr=zeros(P1,n);//reference trajectory(same as setpoint)
edot=zeros(P1,n);//predicted unforced error

t=-(n-1)/2:Ts:(n-1)/2;

for k=(n-1)/2+1:n-P1
    
    //Unforced predictions
    for J=1:P1
        ydot(J,k+1)=S(J+1:N-1)'*flipdim(delta_u(k+J-N+1:k-1),1)+S(N)*u(k+J-N);
    end

    //Actual values of the process
    J=0;
    y(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N)+...
            S(1:N-1)'*flipdim(delta_d(k+J-N+1:k+J-1),1)+S(N)*d(k+J-N);

    //Predicted value of the process
    J=0;
    yhat(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N);

    //Corrected prediction for unforced case
    ydottilde(:,k+1)=ydot(:,k+1)+ones(P1,1)*(y(k)-yhat(k));
    
    //Predicted unforced error   Eqn20-52
    edot(:,k+1)=yr(:,k+1)-ydottilde(:,k+1);
    
    //Control move
    delta_u(k)=Kc1*edot(:,k+1);
    u(k)=u(k-1)+delta_u(k);
    
end

scf();
subplot(1,2,1);
plot(t,y,'black-');
subplot(1,2,2);
plot2d2(t,u);

//=============Part(c) MPC-2========//
n=T/Ts*2+1; //no. of discrete points in our domain of analysis
//Input initialization T is the Time for simulation
//We take a few u values in negative time to facilitate 
//usage of step response model
u=zeros(n,1);
d=zeros(n,1);
delta_u=zeros(n,1);
u=cumsum(delta_u);
delta_d=zeros(n,1);
delta_d((n-1)/2+1)=1;//disturbance t=0 min
d=cumsum(delta_d);

y=zeros(1,n);//Actual values
yhat=zeros(1,n); //predicted value
ydot=zeros(P2,n); //Unforced predictions
ydottilde=zeros(P2,n); //Corrected unforced predictions
yr=zeros(P2,n);//reference trajectory(same as setpoint)
edot=zeros(P2,n);//predicted unforced error

t=-(n-1)/2:Ts:(n-1)/2;

for k=(n-1)/2+1:n-P2
    
    //Unforced predictions
    for J=1:P2
        ydot(J,k+1)=S(J+1:N-1)'*flipdim(delta_u(k+J-N+1:k-1),1)+S(N)*u(k+J-N);
    end

    //Actual values of the process
    J=0;
    y(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N)+...
            S(1:N-1)'*flipdim(delta_d(k+J-N+1:k+J-1),1)+S(N)*d(k+J-N);

    //Predicted value of the process
    J=0;
    yhat(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N);

    //Corrected prediction for unforced case
    ydottilde(:,k+1)=ydot(:,k+1)+ones(P2,1)*(y(k)-yhat(k));
    
    //Predicted unforced error   Eqn20-52
    edot(:,k+1)=yr(:,k+1)-ydottilde(:,k+1);
    
    //Control move
    delta_u(k)=Kc2(1,:)*edot(:,k+1);
    u(k)=u(k-1)+delta_u(k);
    
end
subplot(1,2,1);
plot(t,y,'-.');
subplot(1,2,2);
plot2d2(t,u,style=2);



//=============Part(C) PID========//
n=T/Ts*2+1; //no. of discrete points in our domain of analysis
//Input initialization T is the Time for simulation
//We take a few u values in negative time to facilitate 
//usage of step response model

u=zeros(n,1);
d=zeros(n,1);
delta_u=zeros(n,1);
u=cumsum(delta_u);
delta_d=zeros(n,1);
delta_d((n-1)/2+1)=1;//disturbance t=0 min
d=cumsum(delta_d);

y=zeros(n,1);//Actual values
ysp=0;//setpoint
e=zeros(n,1);//error
delta_e=zeros(n,1);//error

t=-(n-1)/2:Ts:(n-1)/2;

//PID settings
Kc=3.52;taui=6.98;tauD=1.73;

for k=(n-1)/2+1:n-1
    //Actual values of the process
    J=0;
    y(k+J)=S(1:N-1)'*flipdim(delta_u(k+J-N+1:k+J-1),1)+S(N)*u(k+J-N)+...
            S(1:N-1)'*flipdim(delta_d(k+J-N+1:k+J-1),1)+S(N)*d(k+J-N);
    //error
    e(k)=ysp-y(k);
    delta_e(k)=e(k)-e(k-1);
    
    //Controller move----Digital PID----Eqn 7-28 Pg 136 (Velocity form)
    u(k)=u(k-1)+Kc*([delta_e(k,1)+e(k,1)*Ts/taui+tauD/Ts*(e(k)-2*e(k-1)+e(k-2))]);
    delta_u(k)=u(k)-u(k-1);    
end
subplot(1,2,1);
plot(t,y,'red--');
set(gca(),"data_bounds",[0 60 -0.1 0.3]); //putting bounds on display
l=legend("MPC (P=3,M=1)","MPC (P=4,M=2)","PID controller",position=1);
xtitle("Process Output","Time(min)","$y$");
a=get("current_axes");
c=a.y_label;c.font_size=5;

subplot(1,2,2);
plot2d2(t,u,style=5);
set(gca(),"data_bounds",[0 30 -1.5 0]); //putting bounds on display
l=legend("MPC (P=3,M=1)","MPC (P=4,M=2)","PID controller",position=1);
xtitle("Controller Output","Time(min)","$u$");
a=get("current_axes");
c=a.y_label;c.font_size=5;
