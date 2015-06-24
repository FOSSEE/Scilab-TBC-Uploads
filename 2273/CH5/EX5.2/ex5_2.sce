//voltage at sending end, percentage regulation,total line losses and transmission efficiency
clear;
clc;
//soltion
//given
P=5000;//kW//power
V=22000;//kV//recieving voltage
pf=0.8;//peak factor
R=4;//ohm//resistance
X=6;//ohm//loop reactance
Vr=V/sqrt(3);
I=P*1000/(3*round(Vr)*pf);
Vs=round(Vr)+(I*R*pf)+(I*X*sind(acosd(pf)));
Vsl=sqrt(3)*Vs;
printf("Sending end line voltage= %.3fkV\n",Vsl/1000)
Pr=((Vsl-V)*100)/V;
printf("Percentage regulation= %.2f percent\n",Pr);
Ll=3*(round(I))^2*R/1000;//line losses
printf("Total Line Losses= %.3fkW\n",Ll);
nt=P*100/(P+Ll);
printf("Transmission efficiency= %.3f percent",nt)
