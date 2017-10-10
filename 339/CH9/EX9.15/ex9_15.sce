global Z0;
Z0=50;
//define the S-parameters of the transistor
s11=0.3*exp(%i*(+30)/180*%pi);
s12=0.2*exp(%i*(-60)/180*%pi);
s21=2.5*exp(%i*(-80)/180*%pi);
s22=0.2*exp(%i*(-15)/180*%pi);
s_param = [s11 s12;s21 s22]
delta = abs(det(s_param));
k = (1 - abs(s11)^2 - abs(s22)^2 +delta^2)./(2*abs(s12*s21));

//noise parameters of the transistor
Fmin_dB=1.5
Fmin=10^(Fmin_dB/10);
Rn=4;
Gopt=0.5*exp(%i*45/180*%pi);


//compute a noise circle
Fk_dB=1.6;//desired noise performance
Fk=10^(Fk_dB/10);

Qk=abs(1+Gopt)^2*(Fk-Fmin)/(4*Rn/Z0); //noise circle parameter
dfk=Gopt/(1+Qk); //circle center location
rfk=sqrt((1-abs(Gopt)^2)*Qk+Qk^2)/(1+Qk); //circle radius


//plot a noise circle
a=[0:360]/180*%pi;
mtlb_hold on
plot(real(dfk)+rfk*cos(a),imag(dfk)+rfk*sin(a),'b','linewidth',2);

//specify the goal gain
G_goal_dB=8;
G_goal=10^(G_goal_dB/10);


//find constant operating power gain circles
go=G_goal/abs(s21)^2;  //normalized gain
dgo=go*conj(s22-delta*conj(s11))/(1+go*(abs(s22)^2)); //center

rgo=sqrt(1-2*K*go*abs(s12*s21)+go^2*abs(s12*s21)^2);
rgo=rgo/abs(1+go*(abs(s22)^2)); //radius

//map a constant gain circle into the Gs plane
rgs=rgo*abs(s12*s21/(abs(1-s22*dgo)^2-rgo^2*abs(s22)^2));
dgs=((1-s22*dgo)*conj(s11-delta*dgo)-rgo^2*s22)/(abs(1-s22*dgo)^2-rgo^2*abs(s22)^2);

//plot constant gain circle in the Smith Chart
mtlb_hold on
plot(real(dgs)+rgs*cos(a),imag(dgs)+rgs*sin(a),'r','linewidth',2);


//choose a source reflection coefficient Gs
Gs=dgs+%i*rgs;

//find the corresponding GL
GL=(s11-conj(Gs))/(delta-s22*conj(Gs));

//find the actual noise figure
F=Fmin+4*Rn/Z0*abs(Gs-Gopt)^2/(1-abs(Gs)^2)/abs(1+Gopt)^2;

//% print out the actual noise figure
Actual_F_dB=10*log10(F)

//find the input and output reflection coefficients
Gin=s11+s12*s21*GL/(1-s22*GL);
Gout=s22+s12*s21*Gs/(1-s11*Gs);


//find the VSWRin and VSWRout
Gimn=abs((Gin-conj(Gs))/(1-Gin*Gs));
Gomn=abs((Gout-conj(GL))/(1-Gout*GL));

VSWRin=(1+Gimn)/(1-Gimn); //VSWRin should be unity since we used the constant operating gain approach
VSWRout=(1+Gomn)/(1-Gomn);

//specify the desired VSWRin
VSWRin=1.5;

//find parameters for constant VSWR circle
Gimn=(1-VSWRin)/(1+VSWRin)
dvimn=(1-Gimn^2)*conj(Gin)/(1-abs(Gimn*Gin)^2); //circle center
rvimn=(1-abs(Gin)^2)*abs(Gimn)/(1-abs(Gimn*Gin)^2); //circle radius

//plot VSWRin=1.5 circle in the Smith Chart
plot(real(dvimn)+rvimn*cos(a),imag(dvimn)+rvimn*sin(a),'g','linewidth',2);


//plot a graph of the output VSWR as a function of the Gs position on the constant VSWRin circle  
Gs=dvimn+rvimn*exp(%i*a); 
Gout=s22+s12*s21*Gs./(1-s11*Gs);

//find the reflection coefficients at the input and output matching networks
Gimn=abs((Gin-conj(Gs))./(1-Gin*Gs));
Gomn=abs((Gout-conj(GL))./(1-Gout*GL));

//and find the corresponding VSWRs
VSWRin=(1+Gimn)./(1-Gimn);
VSWRout=(1+Gomn)./(1-Gomn);

figure; //open new figure for the VSWR plot
plot(a/%pi*180,VSWRout,'r',a/%pi*180,VSWRin,'b','linewidth',2);
legend('VSWR_{out}','VSWR_{in}');
title('Input and output VSWR as a function of \Gamma_S position');
xlabel('Angle \alpha, deg.');
ylabel('Input and output VSWRs');
mtlb_axis([0 360 1.3 2.3])


//choose a new source reflection coefficient
Gs=dvimn+rvimn*exp(%i*85/180*%pi);

//find the corresponding output reflection coefficient
Gout=s22+s12*s21*Gs./(1-s11*Gs);

//compute the transducer gain in this case
GT=(1-abs(GL)^2)*abs(s21)^2.*(1-abs(Gs).^2)./abs(1-GL*Gout).^2./abs(1-Gs*s11).^2;
GT_dB=10*log10(GT)

//find the input and output matching network reflection coefficients
Gimn=abs((Gin-conj(Gs))./(1-Gin*Gs));
Gomn=abs((Gout-conj(GL))./(1-Gout*GL));

//and find the corresponding VSWRs
VSWRin=(1+Gimn)./(1-Gimn)
VSWRout=(1+Gomn)./(1-Gomn)

//also compute the obtained noise figure
F=Fmin+4*Rn/Z0*abs(Gs-Gopt)^2/(1-abs(Gs)^2)/abs(1+Gopt)^2;
F_dB=10*log10(F)