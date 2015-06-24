//Find current and voltage of sending end, percentage regulation,line losses, sending end power factor and transmission efficiency
clear;
clc;
//soltion
//given
R=0.6125*100;//ohm//total resistance
X=1*100;//ohm//reactance
Y=17.5*10^-4;//S//total susecptance
Vr=66*1000;//V
pf=0.8;//power factor
P=20*10^6;//watts
Ir=(P/(Vr*pf))*complex(pf,-0.6);
Ic=complex(0,Y*Vr);
Is=Ir+Ic;
theta1=atand((imag(Is)/real(Is)));
printf("Sending end current= %.2f∠%.3f°A\n",abs(Is),theta1);
Vs=Vr+Is*(complex(R,X));
theta2=atand((imag(Vs)/real(Vs)));
printf("Sending end voltage= %.3f∠%.2f°Volts\n",abs(Vs),theta2);
phi=theta2-theta1;
printf("sending end power factor= %.3f(lag)\n",cosd(phi));
Pr=((abs(Vs)-Vr)*100)/Vr;
printf("Percentage regulation= %.1f percent\n",Pr);
Ll=(abs(Is))^2*R/1000;//line losses
printf("Total Line Losses= %.3fkW\n",Ll);
nt=P*100/(P+Ll*1000);
printf("Transmission efficiency= %.2f percent",nt)
