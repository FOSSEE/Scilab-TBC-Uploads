//Example No. 6.8
clc;
clear;
close;
format('v',6);

//Given Data : 
V=400;//volt
P=4;//pole
f=50;//Hz
r1=0.64;//ohm
r2=0.08;//ohm
x1=1.1;//ohm
x2=0.12;//ohm
T1=40;//N-m
N=1440;//rpm
n=2*f/P;//rps
n=n*60;//rpm
N1=1300;//rpm
Tload=T1*(N1/N)^2;//N-m
disp(Tload,"Load torque in N-m : ");
S=(n-N1)/n;//slip
r2dash=r2*2^2;//ohm
x2dash=x2*2^2;//ohm
//Tload=3*I2dash^2*r2dash/(2*%pi*S*n/60)
I2dash=sqrt(Tload/3/r2dash*(2*%pi*S*n/60));//A
I2=2*I2dash;//A
disp(I2,"Rotor current in A : ");
I1=I2dash;//A
V1=I1*(r1+r2dash+r2dash*(1-S)/S+%i*(x1+x2dash));//Vplt
StatorVoltage=abs(V1)*sqrt(3);//Volt
disp(StatorVoltage,"Stator Applied Voltage in V : ");
