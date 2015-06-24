//Example No. 5.7
clc;
clear;
close;
format('v',7);

//Given Data : 
I=50;//A
V=200;//volt
N=1000;//rpm
Ra=0.2;//ohm
Eb=V-I*Ra;//V
Rt=(V+Eb)/2/I;//ohm(Total resistance required)
disp(Rt-0.5,"Additional resistance required to limit the current in ohm : ");
omega_m=N/60*2*%pi;//rad/s
T=Eb*2*I/omega_m;//N-m
disp(T,"Braking torque in N-m : ");
Eb=0;//for speed=0
I=V/Rt;//A
//T proportional to I(for separately excited motor)
T=T*(I/100);//N-m
disp(T,"Torque when speed decreased to zero in N-m : ");
