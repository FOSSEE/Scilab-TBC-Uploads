//Example 7.11.//acceleration,coasting retardation and scheduled speed
clc;
clear;
close;
format('v',6)
//given data :
t1=24;//in sec
t2=69;// in sec
t3=11;// in sec
V1=48;// in km/h
alfa=V1/t1;
disp("part (a)")
disp(alfa,"Acceleration(km/h/sec) = ")
r=58;// in N/tonne
G=0;
Beta=r/(277.8*1.1);
disp("part (b)")
disp(Beta,"Retardation(kmphps) = ")
V2=V1-(Beta*t2);
S=round(((V1*t1)/7200)+(((V1+V2)*t2)/7200)+((V2*t3)/7200));
D=20;// duration of stop in sec
Ts=t1+t2+t3+D;
Vs=round((S*3600)/Ts);
disp("part (c)")
disp(Vs,"Schedule time,Vs(kmph) = ")
D1=15;//when the duration of stop in sec
Ts_dash=t1+t2+t3+D1;
Vs_dash=(S*3600)/Ts_dash;
disp(Vs_dash,"Schedule speed,VS_dash(kmph) = ")
