//Example No. 3.4
clc;
clear;
close;
format('v',6);

//Given Data : 
MotorOutput=200;//KW
v=60;//Km/hr
w=400;//KN
friction=5;//N/KN weight
tan_theta=1/100;//inclination
g=9.81;// gravity constant

//Solution : 
sin_theta=tan_theta;
W_sin_theta=w*1000*sin_theta;//N
R=friction*W_sin_theta/10;//frictional resistance in N
P=W_sin_theta+R;//N
v=60*1000/60/60;//m/s
Power=P*v;//Watt
Pdash=MotorOutput*1000-Power;//Power causes acceleration in watt or N-m/s
m=w*1000/g;//in Kg
a=Pdash/m;//in m/s^2
disp(a,"Acceleration in m/s^2 : ");
