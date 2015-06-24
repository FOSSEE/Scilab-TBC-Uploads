clear
clc

//Example 17.5
disp('Example 17.5')

deltaT=[0.05 0.25 0.5 1]';//sampling time
K=-20;
theta=1+(deltaT/2);//Add half of sampling time to delay for finding PI settings
tau=5;

//Table 11.3 ITAE disturbance settings
//Note that there is an error in book solution saying Table 11.2
//It should be table 11.3

Y=0.859*(theta/tau)^(-0.977);Kc=Y/K;
taui=tau*(0.674*(theta/tau)^-0.680).^-1;

mprintf('\n     ITAE(disturbance)   \n')
mprintf('   deltaT                Kc          tauI')
mprintf('\n  %f       %f    %f',deltaT,Kc,taui)

//Finding digital controller settings
//Eqn 17-55
a0=1+deltaT./taui;
a1=-(1); //since tauD=0
a2=0;
z=%z;

Gcz=Kc.*(a0+a1*z^-1)./(1-z^-1);

//Refer to table 17.1 to convert continuous transfer function to digital form
Gp=K*(1-exp(-1/tau*deltaT)).*z^(-1+(-1)./deltaT)./(1-exp((-1)/tau*deltaT)*z^-1);//z^(-1/deltaT) for delay

G_CL=syslin('d',((Gp)./(Gcz.*Gp+1)));

t=0:deltaT(1):15
u=ones(1,length(t));
yt=flts(u,G_CL(1,1));
plot(t,yt,'-')

t=0:deltaT(2):15
u=ones(1,length(t));
yt=flts(u,G_CL(2,1));
plot(t,yt,'green--')

t=0:deltaT(3):15
u=ones(1,length(t));
yt=flts(u,G_CL(3,1));
plot(t,yt,'black-.')

t=0:deltaT(4):15
u=ones(1,length(t));
yt=flts(u,G_CL(4,1));
plot(t,yt,'red:')

set(gca(),"data_bounds",[0 15 -8 1]); //putting bounds on display
l=legend("$\Delta t=0.05\ min$","$\Delta t=0.25\ min$","$\Delta t=0.5\ min$","$\Delta t=1\ min$",position=4);
xtitle("Example 17.5","Time(min)","$y$");
a=get("current_axes");
c=a.y_label;c.font_size=5;

mprintf("\nNote that there is a mismatch between the book simulation and what\n...
what we get from SCILAB. The book is wrong. This has been crosschecked using\n...
simulation in SIMULINK(MATLAB)")

