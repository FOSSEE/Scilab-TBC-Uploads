//Example No. 3.3
clc;
clear;
close;
format('v',8);

//Given Data : 
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
disp(Power/1000,"Final KW rating of the motor of train : ");
Force=P;//down the inclined force in N
u=v;//initial velocity in m/s
v=0;//final velocity in m/s
m=w*1000/g;//in Kg
KE=1/2*m*u^2;//in Joule
d=KE/P;//distance in meter
disp(d,"Distance covered in meter : ");
