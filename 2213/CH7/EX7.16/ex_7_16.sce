//Example 7.16: Schedule speed and Specific energy consumption
clc;
clear;
close;
//given data :
t1=30;//in sec
t2=50;// in sec
t3=20;// in sec
alpha=2;//kmphps
V1=alpha*(t1);// in km/h
r=40;// in N/tonne
G=1;
bc=((98.1+r))/(277.8*1.1);//in kmphps
V2=V1-(bc*t2);//km/hr
S=(((V1*t1)/7200)+(((V1+V2)*t2)/7200)+((V2*t3)/7200));
D=15;// duration of stop in sec
Ts=t1+t2+t3+D;
Vs=((S*3600)/Ts);
disp(Vs,"Schedule speed,Vs(kmph) = ")
S1=(V1*t1)/7200;//in meters
r=50;//in N/tonne
WeBY_W=1.1;
G=1;//
Ec=((0.01072*V1^2*WeBY_W)/(S))+(0.2778*(98.1*G+r)*((S1)/(S)));
N=0.75;//
Sec=Ec/0.75;//
disp(Sec,"Specific energy consumption in Wh/tonne-km is")

