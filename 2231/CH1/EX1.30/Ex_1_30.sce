//Example 1_30
clc;
clear;close;

//Given data: 
Vs=230;//V
R=1000:22000;//ohm
Vg=2;//V
C=0.47*10^-6;//F
f=50;//Hz
Xc=1/(2*%pi*f*C);//ohm
//When R=1000 ohm
theta=atand(min(R)/Xc);//degree
Z=min(R)-%i*Xc;//ohm
I=Vs/Z;//A
Vc=-%i*I*Xc;//V
//vc=sqrt(2)*abs(Vc)*sind(omega_t+atand(imag(Vc),real(Vc)))
omega_t=asind(Vg/sqrt(2)/abs(Vc))-atand(imag(Vc),real(Vc));//degree
alfa1=omega_t;//degree
//When R=22000 ohm
Z=max(R)-%i*Xc;//ohm
I=Vs/Z;//A
Vc=-%i*I*Xc;//V
//vc=sqrt(2)*abs(Vc)*sind(omega_t+atand(imag(Vc),real(Vc)))
omega_t=asind(Vg/sqrt(2)/abs(Vc))-atand(imag(Vc),real(Vc));//degree
alfa2=omega_t;//degree
disp(alfa1,"Minimum firing angle in degree")
disp(alfa2,"Maximum firing angle in degree")
