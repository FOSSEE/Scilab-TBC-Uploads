clear
clc

//Example 16.1
disp('Example 16.1')
K=[12.8 -18.9;6.6 -19.4];
tau=[16.7 21;10.9 14.4];
s=%s;
G=K./(1+tau*s);

//ITAE settings from Table 11.3
K1=12.8;tau1=16.7;theta1=1;K2=-19.4;tau2=14.4;theta2=3;
Kc1=1/K1*0.586*(theta1/tau1)^-0.916;taui1=tau1*inv(1.03-0.165*(theta1/tau1)); 
Kc2=1/K2*0.586*(theta2/tau2)^-0.916;taui2=tau2*inv(1.03-0.165*(theta2/tau2)); 

mprintf('          Kc          tauI')
mprintf('\nx_D-R   %f    %f',Kc1,taui1)
mprintf('\nx_B-R   %f    %f',Kc2,taui2)

Kc=[Kc1;Kc2];
tauI=[taui1;taui2];

//====Making step response models of the continuos transfer functions====//
Ts=0.1;//Sampling time ie delta_T
delay3=3/Ts;
delay1=1/Ts;
delay7=7/Ts;
N=100/Ts;//Model Order
s=%s;
G=syslin('c',diag(matrix(G,1,4)));//Transfer function
t=0:Ts:N*Ts;
u_sim=ones(4,length(t));
//Modeling Output delays through input delay in steps
u_sim(1,1:(delay1))=zeros(1,delay1); 
u_sim(3,1:(delay7))=zeros(1,delay7); 
u_sim([2 4],1:(delay3))=zeros(2,delay3);
S=csim(u_sim,t,G)';//generating step response model for real plant
//plot(t,S);
S(1,:)=[];
//Now we have these step response models for each of the transfer functions
//[S1 S3
//S2 S4 




T=120;//Simulation Run Time in minutes
n=T/Ts*2+1; //no. of discrete points in our domain of analysis

//===============================================================//
//===============================================================//
//===============================================================//
//========Set point as +1 in X-D==X-B loop in manual=============//
//p is the controller output
p=zeros(n,2);
delta_p=zeros(n,2);
e=zeros(n,2); //errors=(ysp-y) on which PI acts
ysp=zeros(n,2);
ysp((n-1)/2+1:n,1)=ones(n-((n-1)/2+1)+1,1);

t=-(n-1)/2*Ts:Ts:(n-1)/2*Ts;
y=zeros(n,2);


for k=(n-1)/2+1:n
    
    //Error  e
    e(k,:)=ysp(k-1,:)-y(k-1,:);
    delta_e(k,:)=e(k,:)-e(k-1,:);

    //Controller calculation----Digital PID----Eqn 7-28 Pg 136 (Velocity form)
    p(k,1)=p(k-1,1)+([delta_e(k,1)+e(k,1)*diag(Ts/taui1)]*diag(Kc1));
    //1-1/2-2 pairing
    
    delta_p(k,:)=p(k,:)-p(k-1,:);
       
    //Output
    y(k,1)=[S(1:N-1,1);S(1:N-1,3)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1)]...
        +[S(N,1) S(N,3)]*[p(k-N,1);p(k-N,2)];
    y(k,2)=[S(1:N-1,2);S(1:N-1,4)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);]...
        +[S(N,2) S(N,4)]*[p(k-N,1);p(k-N,2)];
end

subplot(2,1,1);
plot(t',y(:,1),'b-');
set(gca(),"data_bounds",[0 40 0 1.4]); //putting bounds on display
l=legend("$x_B\text{ loop in manual}$",position=1);
xtitle("","Time(min)","$x_D$");
a=get("current_axes");
c=a.y_label;c.font_size=5;

//===============================================================//
//===============================================================//
//===============================================================//
//========Set point as +1 in X-B==X-D loop in manual=============//
//p is the controller output
p=zeros(n,2);
delta_p=zeros(n,2);
e=zeros(n,2); //errors=(ysp-y) on which PI acts
ysp=zeros(n,2);
ysp((n-1)/2+1:n,2)=ones(n-((n-1)/2+1)+1,1);

t=-(n-1)/2*Ts:Ts:(n-1)/2*Ts;
y=zeros(n,2);


for k=(n-1)/2+1:n
    
    //Error  e
    e(k,:)=ysp(k-1,:)-y(k-1,:);
    delta_e(k,:)=e(k,:)-e(k-1,:);

    //Controller calculation----Digital PID----Eqn 7-28 Pg 136 (Velocity form)
    p(k,2)=p(k-1,2)+([delta_e(k,2)+e(k,2)*diag(Ts/taui2)]*diag(Kc2));
    //1-1/2-2 pairing
    
    delta_p(k,:)=p(k,:)-p(k-1,:);
       
    //Output
    y(k,1)=[S(1:N-1,1);S(1:N-1,3)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1)]...
        +[S(N,1) S(N,3)]*[p(k-N,1);p(k-N,2)];
    y(k,2)=[S(1:N-1,2);S(1:N-1,4)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);]...
        +[S(N,2) S(N,4)]*[p(k-N,1);p(k-N,2)];
end

subplot(2,1,2);
plot(t',y(:,2),'b-');
set(gca(),"data_bounds",[0 40 0 1.4]); //putting bounds on display
l=legend("$x_D\text{ loop in manual}$",position=1);
xtitle("","Time(min)","$x_B$");
a=get("current_axes");
c=a.y_label;c.font_size=5;

//===============================================================//
//===============================================================//
//===============================================================//
//========Set point as +1 in X-D==Both loops Automatic===========//
//p is the controller output
p=zeros(n,2);
delta_p=zeros(n,2);
e=zeros(n,2); //errors=(ysp-y) on which PI acts
ysp=zeros(n,2);
ysp((n-1)/2+1:n,1)=ones(n-((n-1)/2+1)+1,1);

t=-(n-1)/2*Ts:Ts:(n-1)/2*Ts;
y=zeros(n,2);


for k=(n-1)/2+1:n
    
    //Error  e
    e(k,:)=ysp(k-1,:)-y(k-1,:);
    delta_e(k,:)=e(k,:)-e(k-1,:);

    //Controller calculation----Digital PID----Eqn 7-28 Pg 136 (Velocity form)
//    p(k,:)=p(k-1,:)+flipdim([delta_e(k,:)+e(k,:)*diag(Ts./tauI)]*diag(Kc),2);
    p(k,:)=p(k-1,:)+([delta_e(k,:)+e(k,:)*diag(Ts./tauI)]*diag(Kc));
    //1-1/2-2 pairing
    
    delta_p(k,:)=p(k,:)-p(k-1,:);
       
    //Output
    y(k,1)=[S(1:N-1,1);S(1:N-1,3)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1)]...
        +[S(N,1) S(N,3)]*[p(k-N,1);p(k-N,2)];
    y(k,2)=[S(1:N-1,2);S(1:N-1,4)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);]...
        +[S(N,2) S(N,4)]*[p(k-N,1);p(k-N,2)];
end

subplot(2,1,1);
plot(t',y(:,1),'r--');
set(gca(),"data_bounds",[0 40 0 1.4]); //putting bounds on display
l=legend("$x_B\text{ loop in manual}$","$\text{Both loops in automatic}$",position=1);
//l.font_size=5;
xtitle("","Time(min)","$x_D$");
a=get("current_axes");
c=a.y_label;c.font_size=5;


//===============================================================//
//===============================================================//
//===============================================================//
//========Set point as +1 in X-B==Both loops Automatic===========//
//p is the controller output
p=zeros(n,2);
delta_p=zeros(n,2);
e=zeros(n,2); //errors=(ysp-y) on which PI acts
ysp=zeros(n,2);
ysp((n-1)/2+1:n,2)=ones(n-((n-1)/2+1)+1,1);

t=-(n-1)/2*Ts:Ts:(n-1)/2*Ts;
y=zeros(n,2);


for k=(n-1)/2+1:n
    
    //Error  e
    e(k,:)=ysp(k-1,:)-y(k-1,:);
    delta_e(k,:)=e(k,:)-e(k-1,:);

    //Controller calculation----Digital PID----Eqn 7-28 Pg 136 (Velocity form)
//    p(k,:)=p(k-1,:)+flipdim([delta_e(k,:)+e(k,:)*diag(Ts./tauI)]*diag(Kc),2);
    p(k,:)=p(k-1,:)+([delta_e(k,:)+e(k,:)*diag(Ts./tauI)]*diag(Kc));
    //1-1/2-2 pairing
    
    delta_p(k,:)=p(k,:)-p(k-1,:);
       
    //Output
    y(k,1)=[S(1:N-1,1);S(1:N-1,3)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1)]...
        +[S(N,1) S(N,3)]*[p(k-N,1);p(k-N,2)];
    y(k,2)=[S(1:N-1,2);S(1:N-1,4)]'...
        *[flipdim(delta_p(k-N+1:k-1,1),1);flipdim(delta_p(k-N+1:k-1,2),1);]...
        +[S(N,2) S(N,4)]*[p(k-N,1);p(k-N,2)];
end

subplot(2,1,2);
plot(t',y(:,2),'r--');
set(gca(),"data_bounds",[0 40 0 1.4]); //putting bounds on display
l=legend("$x_D\text{ loop in manual}$","$\text{Both loops in automatic}$",position=1);
xtitle("","Time(min)","$x_B$");
a=get("current_axes");
c=a.y_label;c.font_size=5;


//Also refer to Example 22.4 for similar application of algorithm of multiploop PID
