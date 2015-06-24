clear
clc

//Example 22.2
disp('Example 22.2')
//Author: Dhruv Gupta....Aug 4, 2013
//<dgupta6@wisc.edu>

K=[0.2 0.58 0.35;0.25 1.10 1.3;0.3 0.7 1.2];
tau=[2 2 2;3 3 3;4 4 4];
s=%s;

G=K./(1+tau*s);

RGA=K.*inv(K');
disp(RGA,"RGA=")

//IMC based tuning
tauC=5;
Kc=diag(tau/tauC./K);
mprintf("\n\nThe tauI given in book are wrong\n...
refer to Table 11.1 for correct formula\n\n")
tauI=diag(tau)+1; 
mprintf('\nWe still however use the ones given in book\n');


disp(Kc,"Kc=")
disp(tauI,"tauI=")
//Refer to Eqns 15-23 and 15-24
Gc=Kc.*(1+(1)./tauI/s);
//For the sake of brevity we write Gstar as G
//We will account for delays in the for loop that we will write
//Refer to Figure 15.9 Page 295 for details of Smith Predictor


//====Making step response models of the continuos transfer functions====//
Ts=0.1;//Sampling time ie delta_T
delay=3/Ts;
N=150/Ts;//Model Order
s=%s;
G=syslin('c',diag(matrix(G,1,9)));//Transfer function
t=0:Ts:N*Ts;
u_sim=ones(9,length(t));
//u_sim(:,1:4)=zeros(9,4); //input delay to account for 3 min delay in G
S=csim(u_sim,t,G)';//generating step response model for real plant
//plot(t,S);
S(1,:)=[];
//Now we have these step response models for each of the transfer functions
//[S1 S4 S7
//S2 S5 S8
//S3 S6 S9]

T=150+delay;//Simulation Run Time in minutes(we add delay because our for loop runs till n-delay)
n=T/Ts*2+1; //no. of discrete points in our domain of analysis
//Input initialization T is the Time for simulation

//========Set point as 10=============//
//p is the controller output
p=zeros(n,3);
delta_p=zeros(n,3);
ytilde=zeros(n,3); //Prediction of Smith Fig 15.9
e=zeros(n,3); //corrections
edash=zeros(n,3);
delta_edash=zeros(n,3);
ysp=zeros(n,3);
ysp((n-1)/2+1:n,1)=10*ones(n-((n-1)/2+1)+1,1);

t=-(n-1)/2*Ts:Ts:(n-1)/2*Ts;
y=zeros(n,3);

for k=(n-1)/2+1:n-delay
    
    //Error  e
    e(k,:)=ysp(k-1,:)-y(k-1,:);
    
    //Error edash
    edash(k,:)=e(k-1,:)-ytilde(k-1,:)+ytilde(k-1-delay,:);
    //Edash=E-(Y1-Y2)...where Y2 is delayed Y1
    delta_edash(k,:)=edash(k,:)-edash(k-1,:);

    //Controller calculation----Digital PID----Eqn 7-28 Pg 136 (Velocity form)
    p(k,:)=p(k-1,:)+[delta_edash(k,:)+edash(k,:)*diag(Ts./tauI)]*diag(Kc);
    
    //Limits on manipulated variables
    p(k,:)=min([(345-180)*ones(1,3);p(k,:)],'r');
    p(k,:)=max([(105-180)*ones(1,3);p(k,:)],'r');
    
    delta_p(k,:)=p(k,:)-p(k-1,:);
    
    
    //Prediction
    ytilde(k,1)=[S(1:N-1,1);S(1:N-1,4);S(1:N-1,7)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,1) S(N,4) S(N,7)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
    ytilde(k,2)=[S(1:N-1,2);S(1:N-1,5);S(1:N-1,8)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,2) S(N,5) S(N,8)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
    ytilde(k,3)=[S(1:N-1,3);S(1:N-1,6);S(1:N-1,9)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,3) S(N,6) S(N,9)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
    
    //Output
    y(k+delay,1)=[S(1:N-1,1);S(1:N-1,4);S(1:N-1,7)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,1) S(N,4) S(N,7)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
    y(k+delay,2)=[S(1:N-1,2);S(1:N-1,5);S(1:N-1,8)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,2) S(N,5) S(N,8)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
    y(k+delay,3)=[S(1:N-1,3);S(1:N-1,6);S(1:N-1,9)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,3) S(N,6) S(N,9)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
end


subplot(2,2,1);
plot(t',y(:,1),'--',t',y(:,2),':',t',y(:,3),'-.',t',ysp(:,1),'-');
set(gca(),"data_bounds",[0 150 -4 12]); //putting bounds on display
l=legend("$y1$","$y2$","$y3$",position=1);
l.font_size=5;
xtitle("","Time(min)","$y$");
a=get("current_axes");
c=a.y_label;c.font_size=5;


subplot(2,2,2);
plot(t',p(:,1),'--',t',p(:,2),':',t',p(:,3),'-.');
set(gca(),"data_bounds",[-1 150 -40 100]); //putting bounds on display
l=legend("$p1$","$p2$","$p3$",position=1);
l.font_size=5;
xtitle("","Time(min)","$p$");
a=get("current_axes");
c=a.y_label;c.font_size=5;

mprintf("Note that there is no overshoot around time=25 mins \n...
which is in contrast to what is shown in book")


//========Now for set point as 50=============//

//p is the controller output
p=zeros(n,3);
delta_p=zeros(n,3);
ytilde=zeros(n,3); //Prediction of Smith Fig 15.9
e=zeros(n,3); //corrections
edash=zeros(n,3);
delta_edash=zeros(n,3);
ysp=zeros(n,3);
ysp((n-1)/2+1:n,1)=50*ones(n-((n-1)/2+1)+1,1);

t=-(n-1)/2*Ts:Ts:(n-1)/2*Ts;
y=zeros(n,3);

for k=(n-1)/2+1:n-delay
    
    //Error  e
    e(k,:)=ysp(k-1,:)-y(k-1,:);
    
    //Error edash
    edash(k,:)=e(k-1,:)-ytilde(k-1,:)+ytilde(k-1-delay,:);
    //Edash=E-(Y1-Y2)...where Y2 is delayed Y1
    delta_edash(k,:)=edash(k,:)-edash(k-1,:);

    //Controller calculation----Digital PID----Eqn 7-28 Pg 136 (Velocity form)
    p(k,:)=p(k-1,:)+[delta_edash(k,:)+edash(k,:)*diag(Ts./tauI)]*diag(Kc);
    
    //Limits on manipulated variables
    p(k,:)=min([(345-180)*ones(1,3);p(k,:)],'r');
    p(k,:)=max([(105-180)*ones(1,3);p(k,:)],'r');
    
    delta_p(k,:)=p(k,:)-p(k-1,:);
    
    
    //Prediction
    ytilde(k,1)=[S(1:N-1,1);S(1:N-1,4);S(1:N-1,7)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,1) S(N,4) S(N,7)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
    ytilde(k,2)=[S(1:N-1,2);S(1:N-1,5);S(1:N-1,8)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,2) S(N,5) S(N,8)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
    ytilde(k,3)=[S(1:N-1,3);S(1:N-1,6);S(1:N-1,9)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,3) S(N,6) S(N,9)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
    
    //Output
    y(k+delay,1)=[S(1:N-1,1);S(1:N-1,4);S(1:N-1,7)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,1) S(N,4) S(N,7)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
    y(k+delay,2)=[S(1:N-1,2);S(1:N-1,5);S(1:N-1,8)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,2) S(N,5) S(N,8)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
    y(k+delay,3)=[S(1:N-1,3);S(1:N-1,6);S(1:N-1,9)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);flipdim(delta_p(k-N+1:k-1,3),1)]...
        +[S(N,3) S(N,6) S(N,9)]*[p(k-N,1);p(k-N,2);p(k-N,3)];
end


subplot(2,2,3);
plot(t',y(:,1),'--',t',y(:,2),':',t',y(:,3),'-.',t',ysp(:,1),'-');
set(gca(),"data_bounds",[0 150 -10 60]); //putting bounds on display
l=legend("$y1$","$y2$","$y3$",position=1);
l.font_size=5;
xtitle("","Time(min)","$y$");
a=get("current_axes");
c=a.y_label;c.font_size=5;


subplot(2,2,4);
plot(t',p(:,1),'--',t',p(:,2),':',t',p(:,3),'-.');
set(gca(),"data_bounds",[-1 150 -100 200]); //putting bounds on display
l=legend("$p1$","$p2$","$p3$",position=1);
l.font_size=5;
xtitle("","Time(min)","$p$");
a=get("current_axes");
c=a.y_label;c.font_size=5;

