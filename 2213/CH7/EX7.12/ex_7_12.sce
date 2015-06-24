//Example 7.12: Schedule speed
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
D=30;// duration of stop in sec
Ts=t1+t2+t3+D;
Vs=((S*3600)/Ts);
disp(Vs,"Schedule time,Vs(kmph) = ")

