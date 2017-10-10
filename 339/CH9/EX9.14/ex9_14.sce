global Z0;
Z0=50;

//define the S-parameters of the transistor
s11=0.3*exp(%i*(+30)/180*%pi);
s12=0.2*exp(%i*(-60)/180*%pi);
s21=2.5*exp(%i*(-80)/180*%pi);
s22=0.2*exp(%i*(-15)/180*%pi);

//pick the noise parameters of the transistor
Fmin_dB=1.5
Fmin=10^(Fmin_dB/10);
Rn=4;
Gopt=0.5*exp(%i*45/180*%pi);

//compute a noise circle
Fk_dB=1.6;
Fk=10^(Fk_dB/10);


Qk=abs(1+Gopt)^2*(Fk-Fmin)/(4*Rn/Z0) //noise circle parameter
dfk=Gopt/(1+Qk); //circle center location
rfk=sqrt((1-abs(Gopt)^2)*Qk+Qk^2)/(1+Qk) //circle radius
 

//plot a noise circle
a=[0:360]/180*%pi;
mtlb_hold on
plot(real(dfk)+rfk*cos(a),imag(dfk)+rfk*sin(a),'b','linewidth',2);

// plot optimal reflection coefficient
plot(real(Gopt),imag(Gopt),'bo');


//specify the desired gain
G_goal_dB=8;
G_goal=10^(G_goal_dB/10);
K = 1.18; 
//find the constant operating power gain circles
go=G_goal/abs(s21)^2; // normalized the gain
dgo=go*conj(s22-conj(s11))/(1+go*(abs(s22)^2)); //center

rgo=sqrt(1-2*K*go*abs(s12*s21)+go^2*abs(s12*s21)^2);
rgo=rgo/abs(1+go*(abs(s22)^2));

//map a constant gain circle into the Gs plane
rgs=rgo*abs(s12*s21/(abs(1-s22*dgo)^2-rgo^2*abs(s22)^2));
dgs=((1-s22*dgo)*conj(s11-dgo)-rgo^2*s22)/(abs(1-s22*dgo)^2-rgo^2*abs(s22)^2);

//plot a constant gain circle in the Smith Chart
mtlb_hold on
plot(real(dgs)+rgs*cos(a),imag(dgs)+rgs*sin(a),'r','linewidth',2);



//choose a source reflection coefficient Gs
Gs=dgs+%i*rgs;
plot(real(Gs), imag(Gs), 'ro');
//text(real(Gs)-0.05,imag(Gs)+0.08,'\bf\Gamma_S');

//find the actual noise figure
F=Fmin+4*Rn/Z0*abs(Gs-Gopt)^2/(1-abs(Gs)^2)/abs(1+Gopt)^2;

//print out the actual noise figure
Actual_F_dB=10*log10(F)