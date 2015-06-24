clear
clc

//Example 11.3
disp('Example 11.3')

//(a)
K=0.2;theta=7.4;tauc=[8 15]';

Kc1=1/K*(2*tauc+theta)./(tauc+theta).^2; //Row M
Kc2=1/K*(2*tauc+theta)./(tauc+theta/2).^2; //Row N
tauI=2*tauc+theta;
tauD=(tauc*theta+theta^2/4)./(2*tauc+theta);

mprintf('               Kc          tauI             tauD')
mprintf('\nPI(tauC=8)   %f    %f     %f',Kc1(1),tauI(1),0)
mprintf('\nPI(tauC=15)   %f    %f     %f',Kc1(2),tauI(2),0)
mprintf('\nPID(tauC=8)   %f    %f     %f',Kc2(1),tauI(1),tauD(1))
mprintf('\nPID(tauC=15)   %f    %f     %f',Kc2(2),tauI(2),tauD(2))

s=%s;

//delay=(1-theta/2*s+theta^2/10*s^2-theta^3/120*s^3)/(1+theta/2*s+theta^2/10*s^2+theta^3/120*s^3);//Third order pade approx
delay=(1-theta/2*s+theta^2/10*s^2)/(1+theta/2*s+theta^2/10*s^2);//second order pade approx
//delay=(1-theta/2*s)/(1+theta/2*s);//first order pade approx
G=K*delay/s;
Gc1=Kc1.*(1+(1)./tauI/s)
Gc2=Kc2.*(1+(1)./tauI/s+tauD*s./(0.1*tauD*s+1));//PID with derivative filtering
G_CL1=syslin('c',Gc1*G./(1+Gc1*G));
G_CL2=syslin('c',Gc2*G./(1+Gc2*G));
t=0:300;
y1=csim('step',t,G_CL1);
y2=csim('step',t,G_CL2);
y1(:,1:theta)=0;//accounting for time delay--this is required otherwise
//an unrealistic inverse response is seen due to the pade approx
y2(:,1:theta)=0;

t_d=151:300;
G_CL_dist1=syslin('c',G./(1+Gc1*G));//closed loop wrt disturbance
G_CL_dist2=syslin('c',G./(1+Gc2*G));//closed loop wrt disturbance
y_d1=csim('step',t_d,G_CL_dist1);
y_d1(:,1:theta)=0;//accounting for time delay
y_d2=csim('step',t_d,G_CL_dist2);
y_d2(:,1:theta)=0;//accounting for time delay
y1(:,t_d)=y1(:,t_d)+y_d1;
y2(:,t_d)=y2(:,t_d)+y_d2;

//plot(t,y1)
//xgrid()
//xtitle('Ex-11.3 PI control','Time(min)','y(t)');
//a=legend("$\tau_c=8$","$\tau_c=15$",position=1);
//a.font_size=2;
//a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
//c=a.y_label;c.font_size=5;
//scf()
//
//plot(t,y2)
//xgrid()
//xtitle('Ex-11.3 PID control','Time(min)','y(t)');
//a=legend("$\tau_c=8$","$\tau_c=15$",position=1);
//a.font_size=2;
//a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
//c=a.y_label;c.font_size=5;


mprintf('\n\nThere is uncertainty as to whether PID with derivative filtering\n...
to be used or not. Since one gets results by using PID with filtering\n...
it has been used here. Note that pade approx for delay=7.4\n...
is totally wrong because it is too gross an approx but we have no\n...
other way of making delay approx so we have to live with it.\n\n...')


//Part (b) Routh Array testing
//For frequency response refer to ch-13 for Bode Plots
G=(1-theta*s)/s;
poly_PI=Gc1*G;//denom(G_CL1);//G*Gc for PI controller
poly_PID=Gc2*G;//G*Gc for PID controller

Routh1=routh_t(poly_PI(1,1)/1,poly(0,"K")); // produces routh table for polynomial 1+Kc*poly
disp(Routh1,"Routh1=")
Kmax1=roots(numer(Routh1(1,1)));

Routh2=routh_t(poly_PI(2,1)/1,poly(0,"K")); // produces routh table for polynomial 1+Kc*poly
disp(Routh2,"Routh2=")
Kmax2=roots(numer(Routh2(1,1)));

Routh3=routh_t(poly_PID(1,1)/1,poly(0,"K")); // produces routh table for polynomial 1+Kc*poly
disp(Routh3,"Routh3=")
//Kmax3=roots(numer(Routh3(1,1)));

Routh4=routh_t(poly_PID(2,1)/1,poly(0,"K")); // produces routh table for polynomial 1+Kc*poly
disp(Routh4,"Routh4=")
//Kmax4=roots(numer(Routh4(1,1)));

mprintf('\n Kmax should be less than %f and %f \n for tauc=8 and 15 respectively for PI system to be stable',Kmax1,Kmax2)
mprintf('\n\nAnswers to Kmax for PID controller using \n...
Routh Array in the book are wrong. This can be easily \n...
checked from Routh3 and Routh4 which are displayed\n')
mprintf('\n\nFor frequency response refer to ch-13 for Bode Plots\n')

