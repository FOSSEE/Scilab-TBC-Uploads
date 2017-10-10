//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//EX3_8.sce

clc;
clear;
R=2;   //Resistance in ohm
L=2;    //Inductor value in henry
C=1/12;   //capacitor value in farad
omega=3; //Taken from v(t) value
//given v(t)=12 sin(3t+30);
Vm=12;
Vrms=Vm/sqrt(2);
theta=30;

Z=complex(R,(omega*L)-(1/(omega*C)));
V=complex(Vrms*cosd(theta),Vrms*sind(theta));
I=V/Z;
I_mag=sqrt(real(I)^2+imag(I)^2);
I_ang=atand(imag(I)/real(I));
printf("\n Circuit current=%1.0f angle:%d degree \n",I_mag,I_ang)

Vr=I*R;
Vr_mag=sqrt(real(Vr)^2+imag(Vr)^2);
Vr_ang=atand(imag(Vr)/real(Vr));
printf("\n Voltage across the resistance=%1.0f angle:%d degree \n",Vr_mag,Vr_ang)

theta1=90;
Xl=complex(omega*L*cosd(theta1),omega*L*sind(theta1));
Vl=I*Xl;
Vl_mag=sqrt(real(Vl)^2+imag(Vl)^2);
Vl_ang=atand(imag(Vl)/real(Vl));
printf("\n Voltage across the inductance=%1.0f angle:%1.0f degree \n",Vl_mag,Vl_ang)

theta2=-90;
Xc=complex(cosd(theta2)/(omega*C),sind(theta2)/(omega*C));
Vc=I*Xc;
Vc_mag=sqrt(real(Vc)^2+imag(Vc)^2);
Vc_ang=atand(imag(Vc)/real(Vc))-180;
printf("\n Voltage across the capacitance=%1.0f angle:%d degree \n",Vc_mag,Vc_ang)
