//Example No. 6.18
clc;
clear;
close;
format('v',6);

//Given Data : 
V=400;//volt
f=50;//Hz
P=4;//poles
N1=1350;//rpm
N2=900;//rpm
Rs=1.5;//ohm
R=4;//ohm
X=4;//ohm
ns=2*f/P*60;//rpm
S=(ns-N1)/ns;//slip
T=3/2/%pi/(ns/60)*[(V/sqrt(3))^2*(P/S)/((Rs+P/S)^2+(R+X)^2)]
T2=T*(N2/N1)^2;//N-m
disp(T2,"Torque at 900 rpm in N-m : ");
Snew=(ns-N2)/ns;//slip
V=sqrt((T2/3*2*%pi*(ns/60))*((Rs+P/Snew)^2+(R+X)^2)/(P/Snew))*sqrt(3)
disp(V,"Voltage at speed of 900 rpm in Volts : ");
