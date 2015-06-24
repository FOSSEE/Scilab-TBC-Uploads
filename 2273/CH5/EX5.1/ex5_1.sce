//Find voltage at sending end, percentage regulation and transmission efficiency
clear;
clc;
//soltion
//given
P=3300;//kW//power
Vr=33000;//kV//recieving voltage
pf=0.8;//peak factor
R=2;//ohm//resistance
X=3;//ohm//loop reactance
I=P*1000/(Vr*pf);
Vs=sqrt((Vr*pf+I*R)^2+((Vr*sind(acosd(pf)))+I*X)^2);
printf("Voltage at sending end(Vs)= %.3fV\n",Vs);
Pr=((Vs-Vr)*100)/Vr;
printf("Percentage regulation= %f percent\n",Pr);
Ll=I*I*R/1000;//line losses
nt=P*100/(P+Ll);
printf("Transmission efficiency= %.2f percent",nt)
