
clear
clc

//Example 11.4
disp('Example 11.4')

s=%s;
theta=1;tau=100;K=100;
delay=(1-theta/2*s+theta^2/10*s^2-theta^3/120*s^3)/(1+theta/2*s+theta^2/10*s^2+theta^3/120*s^3);//Third order pade approx
G=K*delay/(tau*s+1);

//(a)
tauca=1;
Kc1=1/K*tau/(tauca+theta);taui1=tau;
//(b)
taucb=2;Kstar=K/tau;
Kc2=1/Kstar*(2*taucb+theta)./(taucb+theta).^2; //Row M
taui2=2*taucb+theta;
//(c)
taucc=1;
Kc3=Kc1;taui3=min(taui1,4*(taucc+theta))
//(d)
//Kc4=0.551;taui4=4.91;
//Chen and Seborg settings given in Second Edition of book

mprintf('                   Kc          tauI')
mprintf('\nIMC   %20f    %f',Kc1,taui1)
mprintf('\nIntegrator approx   %-5f    %f',Kc2,taui2)
mprintf('\nSkogestad   %15f    %f',Kc3,taui3)
//mprintf('\nDS-d   %20f    %f',Kc4,taui4)  



Gc=[Kc1 Kc2 Kc3]'.*(1+(1)./([taui1 taui2 taui3]'*s))

G_CL=syslin('c',Gc*G./(1+Gc*G));
t=0:0.1:20;
y=csim('step',t,G_CL);
y(:,1:theta/0.1)=0;//accounting for time delay--this is required otherwise
//an unrealistic inverse response is seen due to the pade/taylor approx
plot(t,y);
xgrid()
xtitle('Ex-11.4 Tracking problem','Time(min)','y(t)');
a=legend("IMC","Integrator approx","Skogestad",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;

scf()
t=0:0.1:60;
G_CL_dist=syslin('c',G./(1+Gc*G));//closed loop wrt disturbance
yd=csim('step',t,G_CL_dist);
yd(:,1:theta/0.1)=0;//accounting for time delay--this is required otherwise
//an unrealistic inverse response is seen due to the pade/taylor approx
plot(t,yd);

xgrid()
xtitle('Ex-11.4 Disturbance rejection','Time(min)','y(t)');
a=legend("IMC","Integrator approx","Skogestad",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;
