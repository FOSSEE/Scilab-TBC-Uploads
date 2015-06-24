clear
clc

//Example 11.7
disp('Example 11.7')

K=2;theta=1;tau1=10;tau2=5; //Model parameters

s=%s;
delay=(1-theta/2*s+theta^2/10*s^2-theta^3/120*s^3)/(1+theta/2*s+theta^2/10*s^2+theta^3/120*s^3);//Third order pade approx
G=K*delay/((tau1*s+1)*(tau2*s+1));
Ku=[8.01]';//Trials for various values of Ku can be done by changing Ku
G_CL_trial=syslin('c',G*Ku./(1+G*Ku))
t=0:0.1:100;
y=csim('step',t,G_CL_trial);
plot(t,y)
xtitle('Ex-11.7 Finding ultimate gain Ku','Time(min)','y(t)');
a=legend("Closed loop test",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;
//There isnot a sustained oscillation for Ku=7.88, in our simulation because
//we are using a third order Pade Approx for delay.  But still we go ahead with it
//so that it matches with the example values. Our simulations give Ku=8
Ku=7.88;Pu=11.66;


//(a) Table 11.4 ZN
Kc1=0.6*Ku;taui1=Pu/2;tauD1=Pu/8;
//(b) Table 11.4 TL
Kc2=0.45*Ku;taui2=Pu*2.2;tauD2=Pu/6.3;
//(c) DS method
tauc=3;
Kc3=1/K*(tau1+tau2)/(tauc+theta);taui3=tau1+tau2;tauD3=tau1*tau2/(tau1+tau2);

mprintf('        Kc          tauI        tauD')
mprintf('\nZN   %f    %f      %f',Kc1,taui1,tauD1)
mprintf('\nTL   %f    %f      %f',Kc2,taui2,tauD2)
mprintf('\nDS   %f    %f      %f',Kc3,taui3,tauD3)


// Now we compare the performance of each controller setting
Gc1=Kc1.*(1+(1)./taui1/s+tauD1*s)
Gc2=Kc2.*(1+(1)./taui2/s+tauD2*s)
Gc3=Kc3.*(1+(1)./taui3/s+tauD3*s)
Gc=[Gc1 Gc2 Gc3]';
G_CL=syslin('c',Gc*G./(1+Gc*G));
t=0:160;
y=csim('step',t,G_CL);
y(:,1:theta)=0;//accounting for time delay--this is required otherwise
//an unrealistic inverse response is seen due to the pade/taylor approx


t_d=81:160;
G_CL_dist=syslin('c',G./(1+Gc*G));//closed loop wrt disturbance
yd=csim('step',t_d,G_CL_dist);
yd(:,1:theta)=0;//accounting for time delay
y(:,t_d)=y(:,t_d)+yd;

scf();
plot(t,y)
xgrid()
xtitle('Ex-11.7 Comparison of 3 controllers','Time(min)','y(t)');
a=legend("Ziegler-Nichols","Tyerus-Luyben","Direct Synthesis",position=4);
a.font_size=2;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;

mprintf('\n\nThere is slight mismatch between scilab simulation\n...
and book simulation due to Pade approx\n')
