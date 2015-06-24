clear
clc

//Example 20.3
disp('Example 20.3')


for J=[3 4 6 8] //Tuning parameter
    
Ts=5;//Sampling time ie delta_T
N=16;//Model Order

s=%s;
G=syslin('c',1/(5*s+1)^5);//Transfer function
t=0:Ts:N*Ts;
S=csim('step',t,G)';//generating step response model
//plot(t,S);
S(1)=[];

T=80;//simulation time
n=T/Ts*2+1;
u=zeros(1,n); 
//Input initialization 80 min is the Time for simulation
//We take a few u values in negative time to facilitate usage of step response
//model
delta_u=[0 diff(u)];
yhat_u=zeros(n,1);
ysp=1;
for k=(n-1)/2+1+1:n-J //an additional +1 is because MPC starts after set point change
    yhat_u(k+J)=delta_u(k+J-N+1:k-1)*flipdim(S(J+1:N-1),1)+S(N)*u(k+J-N);//unforced predicted y
    disp(yhat_u(k+J))
    delta_u(k)=(ysp-yhat_u(k+J))/S(J);
    u(k)=u(k-1)+delta_u(k);
end
u(n-J+1:$)=u(k)*ones(1,J);//Carry forward the u as constant 

t=-(n-1)/2*Ts:Ts:(n-1)*Ts/2;
subplot(2,1,2);
if J==3 | J==6 then
    plot2d2(t((n-1)/2+1:n),u((n-1)/2+1:n),style=J);
end
legend("J=3","J=6",position=4)
xtitle("","Time(min)","$u$");
a=get("current_axes");
c=a.y_label;c.font_size=5;


res=Ts;//resolution
//u_cont=matrix(repmat([0 u],res,1),1,res*length([0 u]));
u_cont=matrix(repmat([u],res,1),1,res*length([u]));
entries=length(u_cont);
t_cont=linspace(-T,T+Ts-1,entries);
yt=csim(u_cont,t_cont,G);
subplot(2,1,1);
if J=8 then //for color of plot2d
    J=9
end
plot2d(t_cont((entries-Ts)/2+1:$),yt((entries-Ts)/2+1:$),style=J,rect=[0,0,80,1.2]);
end

//Other niceties for plots
subplot(2,1,1);
plot(t_cont((entries-Ts)/2+1:$),ones(length(t_cont((entries-Ts)/2+1:$)),1),'--');
legend("J=3","J=4","J=6","J=8",position=4)
xtitle("Example 20.3","Time(min)","$y$");
a=get("current_axes");
c=a.y_label;c.font_size=5;
