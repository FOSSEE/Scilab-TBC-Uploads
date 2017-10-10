//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_9.sce

clc;
clear;
G=3;   //Conductance in mho
L=1/4;   //Inductor value in henry
C=3;    //capacitor value in farad
//Given i(t)=15 cos 2t;
Im=15;
Irms=Im/sqrt(2);
omega=2;
theta=0;

Y=complex(G,(omega*C)-(1/(omega*L)));
I=complex(Irms*cosd(theta),Irms*sind(theta));
V=I/Y;
V_mag=sqrt(real(V)^2+imag(V)^2);
V_ang=atand(imag(V)/real(V));
printf("\n Voltage across the elements=%1.2f angle:%2.1f degree \n",V_mag,V_ang)

Ig=V*G;
Ig_mag=sqrt(real(Ig)^2+imag(Ig)^2);
Ig_ang=atand(imag(Ig)/real(Ig));
printf("\n Current through the conductor=%1.2f angle:%2.1f degree \n",Ig_mag,Ig_ang)

theta1=-90;
Bl=complex(cosd(theta1)/(omega*L),sind(theta1)/(omega*L));
Il=V*Bl;
Il_mag=sqrt(real(Il)^2+imag(Il)^2);
Il_ang=atand(imag(Il)/real(Il))-180;
printf("\n Current through the inductor=%1.2f angle:%3.1f degree \n",Il_mag,Il_ang)

theta2=90;
Bc=complex(cosd(theta1)*omega*C,sind(theta1)*omega*C);
Ic=V*Bc;
Ic_mag=sqrt(real(Ic)^2+imag(Ic)^2);
Ic_ang=atand(imag(Ic)/real(Ic));
printf("\n Current through the capacitor=%2.3f angle:%2.1f degree \n",Ic_mag,Ic_ang)



