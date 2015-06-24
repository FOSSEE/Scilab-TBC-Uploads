//Example 7.22: specific energy consumption
clc;
clear;
close;
//given data :
W=500;//
t1=60;//in sec
t2=5*60;// in sec
t3=3*60;// in sec
alpha=2.5;//kmphps
V1=alpha*(t1);// in km/h
r=25;// in N/tonne
G=1;
bc=(((98.1*(8/1000)*100)+r))/(277.8*1.1);//in kmphps
V2=V1-(bc*t3);//km/hr
Beta=3;//retardation
t4=V2/Beta;//in seconds
S=(((V1*t1)/7200)+((V1*t2)/3600)+(((V1+V2)*t3)/7200)+((V2*t4)/7200));
D=15;// duration of stop in sec
Ts=t1+t2+t3+t4+D;
Vs=((S*3600)/Ts);
S1=((V1*t1)/7200)+((V1*t2)/3600);//in km
WeBY_W=1.1;
G=1;//
Ec=((0.01072*V1^2*WeBY_W)/(S))+(0.2778*((98.1*(8/1000)*100)+r)*((S1)/(S)));
N=0.80;//
Sec=Ec/N;//
disp(Sec,"Specific energy consumption in Wh/tonne-km is")


