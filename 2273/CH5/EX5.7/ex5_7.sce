//Find current and voltage of sending end and percentage regulation and transmission efficiency
clear;
clc;
//soltion
//given
R=0.2*150;//ohm//total resistance
X=0.5*150;//ohm//reactance
Y=150*3*10^-6;//S//total susecptance
Vrl=132*1000;//V
pf=0.8;//power factor
P=40*10^6;//MVA
Vr=Vrl/sqrt(3);
Ir_=(P/(sqrt(3)*Vrl));
Ir=Ir_*complex(pf,-0.6);
Z=complex(R,X);//ohm//Load impedance
V_=Vr+Ir*(Z/2);
Ic=V_*(%i)*Y;
Is=Ir+Ic;
theta1=atand((imag(Is)/real(Is)));
printf("Sending end current= %.3f∠%.2f° A\n",abs(Is),theta1);
Vs=V_+Is*(Z/2);
theta2=atand((imag(Vs)/real(Vs)));
Vls=sqrt(3)*abs(Vs)/1000;
printf("Sending end line voltage= %.2fkV\n",Vls);
Pr=((abs(Vs)-Vr)*100)/Vr;
printf("Percentage voltage regulation= %.1f percent\n",Pr);
phi=theta2-theta1;
nt=(Vrl*Ir_*pf*100)/(Vls*1000*abs(Is)*cosd(phi));
printf("Transmission efficiency= %.2f percent",nt);
