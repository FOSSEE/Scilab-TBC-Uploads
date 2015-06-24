clear
clc

//Example 11.1
disp('Example 11.1')

//(a) Desired closed loop gain=1 and tau=[1 3 10]
s=%s;
tauc=[1 3 10]';
tau1=10;tau2=5;K=2;theta=1; //Time delay
Y_Ysp=(1)./(tauc*s+1); //Y/Ysp=delay/(tau*s+1)  Eqn 11-6

//delay=(1-theta/2*s+theta^2/10*s^2-theta^3/120*s^3)/(1+theta/2*s+theta^2/10*s^2+theta^3/120*s^3);//Third order pade approx
delay=(1-theta/2*s)/(1+theta*s/2);//first order Pade approx

G=(K)./((tau1*s+1)*(tau2*s+1))*delay;
G_tilda=G//Model transfer function

//Eqn-11-14
Kc=1/K*(tau1+tau2)./(tauc+theta);tauI=tau1+tau2;tauD=tau1*tau2/(tau1+tau2);
Gc=Kc*(1+1/tauI/s+tauD*s); //PID without derivative filtering
G_CL=syslin('c',Gc/delay*G./(1+Gc*G));//closed loop transfer function
t=0:160;
y=csim('step',t,G_CL);
//plot(t,y)

t_d=81:160;
G_CL_dist=syslin('c',G/delay./(1+Gc*G));//closed loop wrt disturbance
u_d=[0 ones(1,length(t_d)-1)]
y_d=csim('step',t_d,G_CL_dist);
y(:,81:160)=y(:,81:160)+y_d
plot(t,y)

xgrid()
xtitle('Ex-11.1 Correct Model','Time(min)','y(t)');
a=legend("$\tau_c=1$","$\tau_c=3$","$\tau_c=10$",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;

mprintf("\n                  tauc=1      tauc=3      tauc=10")
mprintf("\n Kc(K_tilda=2) %10f    %f      %f",Kc');


//Simulation for model with incorrect gain
scf()
K_tilda=0.9

//Eqn-11-14
Kc=1/K_tilda*(tau1+tau2)./(tauc+theta);tauI=tau1+tau2;tauD=tau1*tau2/(tau1+tau2);
Gc=Kc*(1+1/tauI/s+tauD*s) 
mprintf("\n Kc(K_tilda=0.9) %10f    %f      %f",Kc');
mprintf("\n tauI %20f    %f      %f",tauI*ones(1,3));
mprintf("\n tauD %20f    %f      %f",tauD*ones(1,3));

G_CL=syslin('c',Gc*G./(1+Gc*G));//closed loop transfer function
t=0:160;
y=csim('step',t,G_CL);

t_d=81:160;
G_CL_dist=syslin('c',G./(1+Gc*G));//closed loop wrt disturbance
y_d=csim('step',t_d,G_CL_dist);
y(:,81:160)=y(:,81:160)+y_d
plot(t,y)

xgrid()
xtitle('Ex-11.1 Model with incorrect gain','Time(min)','y(t)');
a=legend("$\tau_c=1$","$\tau_c=3$","$\tau_c=10$",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;

mprintf('\n \nThere is a slight mis-match between graphs from scilab code\n...
and those given in the book because of Pade approx which is very bad\n...
for delay being 1. It works only for small delays. Scilab does \n...
not handle continuous delays and hence this problem cannot \n...
be circumvented' )
