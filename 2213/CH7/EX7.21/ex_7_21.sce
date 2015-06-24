//Example 7.21: Schedule speed,specific energy consumption,total energy consumption and distance
clc;
clear;
close;
//given data :
format('v',6)
t1=30;//in sec
t2=40;// in sec
t3=30;// in sec
alpha=2;//kmphps
V1=alpha*(t1);// in km/h
r=40;// in N/tonne
G=1;
bc=((98.1+r))/(277.8*1.1);//in kmphps
V2=V1-(bc*t3);//km/hr
Beta=2.5;//retardation
t4=V2/Beta;//in seconds
S=(((V1*t1)/7200)+((V1*t2)/3600)+(((V1+V2)*t3)/7200)+((V2*t4)/7200));
D=15;// duration of stop in sec
Ts=t1+t2+t3+t4+D;
Vs=((S*3600)/Ts);
disp("part (a)")
disp(Vs,"Schedule time,Vs(kmph) = ")
disp("part (b)")
S1=((V1*t1)/7200)+((V1*t2)/3600);//in km
WeBY_W=1.1;
G=1;//
Ec=((0.01072*V1^2*WeBY_W)/(S))+(0.2778*(98.1*G+r)*((S1)/(S)));
N=0.75;//
Sec=Ec/0.75;//
disp(Sec,"Specific energy consumption in Wh/tonne-km is")
disp("part (c)")
W=200;//
tec=(Sec*W*S);//
disp(tec*10^-3,"total energy consumption in kWh")
disp("part (d)")
disp(S,"total distance travelled in Km is")

