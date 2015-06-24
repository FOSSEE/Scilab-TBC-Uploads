//Example 1_27
clc;
clear;close;

//Given data: 
Vs=230;//V
f=50;//Hz
vc=25;//V
C=0.6*10^-6;//F
R=2000:20000;//ohm
Xc=1/(2*%pi*f*C);//ohm
//When R=2000 ohm
Z=min(R)-%i*Xc;//ohm
I=Vs/Z;//A
Vc=-%i*I*Xc;//V
//vc=sqrt(2)*abs(Vc)*sind(omega_t+atand(imag(Vc),real(Vc)))
omega_t=asind(vc/sqrt(2)/abs(Vc))-atand(imag(Vc),real(Vc));//degree
alfa1=omega_t;//degree

//When R=20000 ohm
Z=max(R)-%i*Xc;//ohm
I=Vs/Z;//A
Vc=-%i*I*Xc;//V
//vc=sqrt(2)*abs(Vc)*sind(omega_t+atand(imag(Vc),real(Vc)))
omega_t=asind(vc/sqrt(2)/abs(Vc))-atand(imag(Vc),real(Vc));//degree
alfa2=omega_t;//degree
disp(alfa1,"Minimum firing angle in degree")
disp(alfa2,"Maximum firing angle in degree")
