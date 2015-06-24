//Example 7.18.//maximum power,total energy consumption and specific energy consumption
clc;
clear;
close;
format('v',6)
//given data :
W=100;//in tonne
We=1.1*W;// in tonne
S=2.5;// distance in km
Va=50;//Average speed in kmph
Dr=(3600*S)/Va;
alfa=1;// in km/h/sec
Beta=2;// in km/h/sec
T=180;
r=40;//in N/tonne
G=1;
K=(1/(2*alfa))+(1/(2*Beta));
Vm=round((T/(2*K))-sqrt((T/(2*K))^2-((3600*S)/K)));// maximum speed
t1=Vm/alfa;// acceleration period
t3=Vm/Beta;// braking period
t2=T-(t1+t3);// in sec
Ft=(277.8*We*alfa)+(98.1*W*G)+(W*r);
P_max=round((Ft*Vm)/3600);
disp("part (a)")
disp(P_max,"Maximum power,(kWh) = ")
e=60/100;// efficiency
Ft=(277.8*We*alfa)+(98.1*W*G)+(W*r);
Ft_dash=(98.1*W*G)+(W*r);
P_max=round((Ft*Vm)/3600);
Et=((1/2)*Ft)*(Vm/3600)*(t1/3600)+((Ft_dash*Vm)/3600)*(t2/3600);
Ec=Et/e;
disp("part (b) ")
disp(Ec,"Total Energy Consumption,Ec(kWh) = ")
Sec=(Ec*1000)/(W*S);
disp("part (c) ")
disp(Sec,"Specific Energy Consumption,(Wh/tonne-km) = ")
