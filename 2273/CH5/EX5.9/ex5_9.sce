//Find current and voltage of sending end
clear;
clc;
//soltion
//given
R=0.1*150;//ohm//total resistance
X=0.5*150;//ohm//reactance
Y=3*150*10^-6;//S//total susecptance
Vrl=110*1000;//V
pf=0.8;//power factor
P=50*10^6;//M watts
Vr=floor(Vrl/sqrt(3));
Ir_=(P/(sqrt(3)*Vrl*pf));
Ir=Ir_*complex(pf,-0.6);
Ic1=Vr*(%i*Y/2);
Il=Ir+Ic1;
Z=complex(R,X);
Vs=Vr+Il*Z;
theta=atand((imag(Vs)/real(Vs)));
Vls=sqrt(3)*abs(Vs)/1000;
printf("Sending end line voltage= %.2f kV\n",Vls);
Ic2=Vs*(%i*Y/2);
Is=Il+Ic2;
printf("Sending end current(Is)= %.1f A",abs(Is));
