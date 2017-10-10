//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_10.sce

clc;
clear;
//datas are taken from example 3.8
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
I=V/Z; //from Ohm's law
disp(I,' circuit current is')

Vr=I*R;
disp(Vr,'Voltage across the resistance is')

theta1=90;
Xl=complex(omega*L*cosd(theta1),omega*L*sind(theta1));
Vl=I*Xl;
disp(Vl,'Voltage across the inductance is')

theta2=-90;
Xc=complex(cosd(theta2)/(omega*C),sind(theta2)/(omega*C));
Vc=I*Xc;
disp(Vc,'Voltage across the capacitance is')

Vsum=Vr+Vl+Vc;
disp(Vsum,'The sum of three element voltages is')

//Answers are displayed in a complex mode(real and imaginary) because it is solved in  complex method
