//define the S-parameters of the transistor
s11=0.3*exp(%i*(+30)/180*%pi);
s12=0.2*exp(%i*(-60)/180*%pi);
s21=2.5*exp(%i*(-80)/180*%pi);
s22=0.2*exp(%i*(-15)/180*%pi);

K=1.18

//find the maximum gain
Gmax=abs(s21/s12)*(K-sqrt(K^2-1));
Gmax_dB=10*log10(Gmax)

//specify the target gain
G_goal_dB=8; //would like to build an amplifier with 8dB gain
G_goal=10^(G_goal_dB/10); //convert from dB to normal units

//find constant operating power gain circles
go=G_goal/abs(s21)^2;

//find the center of the constant operating power gain circle
dgo=go*conj(s22-conj(s11))/(1+go*(abs(s22)^2));


//find the radius of the circle 
rgo1=sqrt(1-2*K*go*abs(s12*s21)+go^2*abs(s12*s21)^2);
rgo=rgo1/abs(1+go*(abs(s22)^2));

//plot a circle in the Smith Chart
a=(0:360)/180*%pi;

set(gca(),"auto_clear","off");
plot(real(dgo)+rgo*cos(a),imag(dgo)+rgo*sin(a),'r','linewidth',2);

//choose the load reflection coefficient
zL=1-%i*0.53
GL=(zL-1)/(zL+1);

plot(real(GL),imag(GL),'bo');

[Ro,Theta]=polar(atan(imag(Gs),real(Gs)));
Gin=s11+s12*s21*GL/(1-s22*GL);
Gs=conj(Gin);
Gs_abs=abs(Gs)
Gs_angle=(Theta/%pi)*180;

zs=(1+Gs)/(1-Gs);




