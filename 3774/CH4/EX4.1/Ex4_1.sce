// exa 4.1 Pg 102
clc;clear;close;
P=6;// kN

//dimensions of plate
r=5;//mm
d=40;//mm
D=50;//mm
d0=10;//mm
w=40;//mm
Sut=200;//MPa
n=2.5;// factor of safety

//Fillet - 
rBYd=r/d;
DBYd=D/d;
Kt=1.75;// factor
printf('for stepped plate under tension, Kt=%.2f for r/d = %.3f & D/d = %.2f ',Kt,rBYd,DBYd)
t=poly(0,'t')
sigma_max = Kt*P/t;// N per mm sq.

// Hole -
d0BYw=d0/w;
Kt=2.42;// factor 
printf('\n for finite width plate under tension with a hole, Kt=%.2f for d0/w = %.2f',Kt,d0BYw)
sigma_max_into_t = Kt*P/(w-d0);//N/mm sq.

//Design stress
sigma_d = Sut/n;// MPa
//putting sigma_max=sigma_d
t=sigma_max_into_t/sigma_d*1000;// mm
printf('\n Thickness of plate = %.2f mm or %.f mm',t,t)


