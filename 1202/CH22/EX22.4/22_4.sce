clear
clc

//Example 22.4
disp('Example 22.4')
K=[-6 3;12 5];
tau=[0.67 2;0.67 5];
s=%s;
G=K./(1+tau*s);
delay75=0.75;
delay1=1;
RGA=K.*inv(K');
disp(RGA,"RGA=")

//IMC based tuning
tauC=[tau(1,1) tau(2,2)];
Kc=diag(tau./(repmat(tauC,2,1)+[delay75 delay1;delay75 delay1])./K);
tauI=diag(tau);
disp(Kc,"Kc=")
disp(tauI,"tauI=")

//====Making step response models of the continuos transfer functions====//
Ts=0.05;//Sampling time ie delta_T
delay75=0.75/Ts;
delay1=1/Ts;
N=30/Ts;//Model Order
s=%s;
G=syslin('c',diag(matrix(G,1,4)));//Transfer function
t=0:Ts:N*Ts;
u_sim=ones(4,length(t));
u_sim([1 2],1:(delay75))=zeros(2,delay75); //input delay to account for delay in SNP
u_sim([3 4],1:(delay1))=zeros(2,delay1); //input delay to account for delay in DPM
S=csim(u_sim,t,G)';//generating step response model for real plant
//plot(t,S);
S(1,:)=[];
//Now we have these step response models for each of the transfer functions
//[S1 S3
//S2 S4 




T=50;//Simulation Run Time in minutes
n=T/Ts*2+1; //no. of discrete points in our domain of analysis


//========Set point as -10=============//
//p is the controller output
p=zeros(n,2);
delta_p=zeros(n,2);
e=zeros(n,2); //errors=(ysp-y) on which PI acts
ysp=zeros(n,2);
ysp((n-1)/2+1:n,1)=-10*ones(n-((n-1)/2+1)+1,1);

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


plot(t',y(:,1),'--',t',y(:,2),':',t',ysp(:,1),'-');
set(gca(),"data_bounds",[0 50 -20 25]); //putting bounds on display
l=legend("Mean arterial pressure","Cardiac output",position=1);
//l.font_size=5;
xtitle("","Time(min)","$y$");
a=get("current_axes");
c=a.y_label;c.font_size=5;

mprintf('\nThere is more interaction in the variables\n...
than the book claims, hence a mismatch between the result\n...
and the book\n')

