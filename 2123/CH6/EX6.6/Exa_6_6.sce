//Example No. 6.6
clc;
clear;
close;
format('v',6);

//Given Data : 
V=400;//volt
P=8;//pole
f=50;//Hz
r1=1.2;//ohm
r2dash=1.2;//ohm
x1=2.5;//ohm
x2dash=2.5;//ohm
N=720;//rpm
Ns=120*f/P;//rpm
S=(Ns-N)/Ns;//full load slip
S2=2-S;//Slip during plugging
V1=V/sqrt(3);//V
I2dash=V1/sqrt((r1+r2dash/S2)^2+(x1+x2dash)^2);//A(Initial braking current)
disp(I2dash,"Initial Braking current in A : ");
Ifl=V1/sqrt((r1+r2dash/S)^2+(x1+x2dash)^2);//A(Full load current)
RatioCurrent=I2dash/Ifl;//ratio of initial braking current to full load current
disp("Braking curent is "+string(RatioCurrent)+" times of full  load current.");
Tfl=3*Ifl^2*r1/(2*%pi*S*Ns/60);//N-m
T2dash=3*I2dash^2*r2dash/(2*%pi*S2*Ns/60);//N-m(initail braking T)
disp(T2dash,"Initial Braking torque in N-m : ");
RatioT=T2dash/Tfl;//ratio of initial braking Torque to full load Torque
disp("Braking Torque is "+string(RatioT)+" times of full  load Torque.");
//Let R be the additional resistance
I2dash=2*Ifl;//A
//I2dash=V1/sqrt((r1+r2dash/S2+R/S2)^2+(x1+x2dash)^2);//A(Initial braking current)
R=(sqrt(V1^2/I2dash^2-(x1+x2dash)^2)-r1-r2dash/S2)*S2;//in ohm
Ractual=R/2^2;//ohm
disp(Ractual,"Actual additional rotor resistance per phase in ohm : ");
T_braking=3*I2dash^2*(r2dash+R)/(2*%pi*S2*Ns/60);//N-m(initail braking T)
disp(T_braking,"Braking torque in N-m : ");
TbBYTfl=T_braking/T2dash;//ratio
disp(TbBYTfl,"Ratio o f braking torque to full load torque : ");
