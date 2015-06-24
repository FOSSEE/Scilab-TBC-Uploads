clear
clc

//Example 14.5
disp('Example 14.5')

mprintf('\n\nThere are many errors in this example\n...
1.In Eqn 14-17 the value of w2_o is not zero. It is 50kg/min.\n...
This is so because otherwise current signal from p(t) ie ...
\n eqn 14-30 is more than 20mA which is not possible\n\n....
2.The step change in x1 is from 0.2 to 0.3 and not 0.2 to 0.4\n...
If there is a step change to x1=0.4, then with x2=0.6\n...
one cannot achieve output xsp=0.34 because it is less\n...
both x1 and x2.\n\n...
3.The gain of Gd is 0.65 which is correct because V\n...
has to be calculated using height=1.5meter ie\n...
how much the CSTR is filled and not h=3m, ie\n...
the capacity of CSTR. This is important because\n...
the person who has made solutions for the book has taken h=3m\n...
for generating graphs and hence the gain is twice. \n...
the graphs generated from this code are correct\n\n' )

//part(a) //========Static feedforward controller==========//
K_IP=(15-3)/(20-4);
Kv=300/12;tauV=0.0833;
Kt=(20-4)/0.5;
w2_o=50;x1_o=0;//Zero of the instrument
w1bar=650;w2bar=350;//kg/min
C1=4-w2_o/Kv/K_IP; //Eqn 14-16 to 14-19
C2=w1bar/(Kv*K_IP*Kt);
C3=4+Kt*x1_o;
x1bar=0.2;x2bar=0.6;xbar=0.34;

mprintf('\nThe values of C1, C2, C3 in Eqns 14-16 to 14-19 are\n  %f,       %f,        %f',C1,C2,C3)

//part(b) //=======Dynamic feedforward controller=======//
s=%s;
theta=1;
V=%pi*1^2*1.5; //pi*r^2*h finding volume
rho=1000;//kg/m3
wbar=w1bar+w2bar;
tauD=V*rho/w2bar;tauP=V*rho/wbar;
Kp=(x2bar-xbar)/wbar;
Kd=w1bar/wbar;

Gv=Kv/(tauV*s+1);
Gd=Kd/(tauP*s+1);
Gt=Kt;delay=1;
Gp=Kp/(tauP*s+1);
Gf=-Gd/Gv/Gt/Gp/K_IP; //Equation 14-33 without exp(+s)
//Gt=32*(1-theta/2*s+theta^2/12*s^2)/(1+theta/2*s+theta^2/12*s^2);//second order Pade approx.
Gt=32*(1-theta/2*s)/(1+theta/2*s);//first order Pade approx.
alpha=0.1;
Gf=horner(Gf,0)*(1.0833*s+1)/(alpha*1.0833*s+1);//Eqn 14-34
disp(Gf,"Gf=")


//========Static feedforward controller simulation==========//
Ts=0.01;//sampling time in minutes
t=Ts:Ts:50;
xsp=0.34;//set point for conc. output of blender
x1step=0.2+[zeros(1,length(t)/5) 0.1*ones(1,length(t)*4/5)];//disturbance
//There is a one second lag in the measurement of the disturbance by Gt

delay=1;
d=[0.2*ones(1,delay/Ts) x1step(1,1:$-delay/Ts)];//measurement of disturbance with lag
x1m=4+Kt*d; //Eqn 14-12 where d=x1(t)-x1_o

//plot(t,[x1step' x1m'])
pt=C1+C2*(Kt*xsp-x1m+C3)/(x2bar-xsp);
//Now the values calculated by the above controller needs to be passed to the process 
G_static=syslin('c',[Gd K_IP*Gv*Gp]);
//we take disturbance and control action in deviation variables
yt=0.34+csim([x1step-x1step(1,1);pt-pt(1,1)],t,G_static);
subplot(2,1,1)
plot(t,yt);
xtitle("Fig 14.13(a)","Time(min)","x(mass fraction)")
xgrid();

//========Dynamic feedforward controller simulation======//

Ys_Ds=[Gd K_IP*32*Gf*Gv*Gp]; //Gt=32 without delay
Ys_Ds=syslin('c',Ys_Ds);
t=0.01:0.01:50;
d=[zeros(1,length(t)/5) 0.1*ones(1,length(t)*4/5)];//disturbance
d_shift=[zeros(1,1.1*length(t)/5) 0.1*ones(1,length(t)*3.9/5)];
//we delay the disturbance by one minute for the feedforward controller
//We do this because Pade approx is not good for delay of 1 minute
yt=0.34+csim([d;d_shift],t,Ys_Ds)
plot(t,yt,color='red')
legend("Static Gain","Dynamic Compensation")

//part(c)   //=======PI controller for Feedback======//
Kcu=48.7;Pu=4;//min
Kc=0.45*Kcu;tauI=Pu/1.2;tauD=0;
Gc=Kc*(1+1/(tauI*s)+tauD*s/(1+tauD*s*0.1));
Gm=Gt;//sensor/transmitter


//==========Feedforward and feedback control with dynamic compensation======//
Ys_Ds=[Gd K_IP*32*Gf*Gv*Gp]/(1+K_IP*Gc*Gv*Gp*Gm);//32 is magnitude of Gt
Ys_Ds=syslin('c',Ys_Ds);
t=0.01:0.01:50;
d=[zeros(1,length(t)/5) 0.1*ones(1,length(t)*4/5)];//disturbance
yt=0.34+csim([d;d_shift],t,Ys_Ds)
//This shifting is better because Pade approx is not accurate. Note that there is 
//pade approx in the denominator also(Gm) which we cant help.
subplot(2,1,2)
plot(t,yt)
xgrid();
xtitle("Fig 14.13(b)","Time(min)","x(mass fraction)")

//==========Feedback control only with dynamic compensation======//
Ys_Ds=(Gd)/(1+K_IP*Gc*Gv*Gp*Gm);
Ys_Ds=syslin('c',Ys_Ds);
d=[zeros(1,length(t)/5) 0.1*ones(1,length(t)*4/5)];//disturbance
yt=0.34+csim(d,t,Ys_Ds)
plot(t,yt,color='red')
legend("FB+FF with dynamic compensation","FB only")

mprintf("\n\nNote the slight mismatch between response \n...
times due to pade approx the gain is half of that in the\n...
book. Please see the heigh explanation above to understand.")



