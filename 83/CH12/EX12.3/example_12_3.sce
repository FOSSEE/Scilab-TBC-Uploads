//Chapter 12
//Example 12.3
//page 450
//To calculate maximum power transferred
clear;clc;

Vt=1.0; //generator terminal voltage
V=1.0 ; //infinite bus voltage
Pe=1.0 ; //power delivered
Xd=0.25*%i ; //generator's transient reactance
Xl=0.5*%i ; //transmission line's reactance
Xt=0.1*%i; //transformer's reactance

//to calculate alpha
alpha=asind(Pe*abs(Xt+Xl/2)/(abs(Vt)*abs(V)));
printf('\n\nAlpha=%0.1f deg',alpha);

//current to infinite bus
I=(Vt*(cosd(alpha)+%i*sind(alpha))-V)/(Xt+Xl/2);
printf('\nCurrent to infinte bus=%d+j%0.3f pu',real(I),imag(I));

//votage behind transient reactance
E=Vt+I*(Xd+Xt+Xl/2);
printf('\nVoltage behind transient reactance= E''= %0.3f+j%0.1f pu = %0.3f @%0.1f deg pu\n\n',real(E),imag(E),abs(E),atand(imag(E)/real(E)));

delta=0:0.001:180;

//case(a) Maximum power when system is healthy
X12=Xd+Xt+Xl/2;
Pmax=abs(V)*abs(E)/abs(X12);
Pe1=Pmax*sind(delta);
printf('Maximum power that can be transferred under the following condition is')
printf('\n\n(a)System Healthy:');
printf('\nPmax=%0.2f pu',Pmax);
printf('\nPe=%0.2f sin(delta) pu',Pmax);

//case(b) One line short in the middle
//converting bus3 to delta40
Xa=Xd+Xt; //generator side
Xb=Xl; //healthy transmission line side
Xc=Xl/2; //unhealthy line side
X12=(Xa*Xb+Xb*Xc+Xc*Xa)/(Xc);
Pmax=abs(V)*abs(E)/abs(X12);
Pe2=Pmax*sind(delta);
printf('\n\n(b)One line shorted in the middle:');
printf('\nPmax=%0.4f pu',Pmax);
printf('\nPe=%0.4f sin(delta) pu',Pmax);

//case(c) One line open
X12=Xd+Xt+Xl;
Pmax=abs(V)*abs(E)/abs(X12);
Pe3=Pmax*sind(delta);
printf('\n\n(c)One line open :');
printf('\nPmax=%0.4f pu',Pmax);
printf('\nPe=%0.4f sin(delta) pu',Pmax);

//plotting Power angle curves
plot(delta,Pe1,delta,Pe2,delta,Pe3);
legend(['1.79sin(delta)';'0.694sin(delta)';'1.265sin(delta)']);
title("Power angle curves");
xlabel("Delta");
ylabel("Pe");