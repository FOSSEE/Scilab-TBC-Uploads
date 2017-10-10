//To determine the sum and difference of two alternating voltage sources

clc;
clear;

//Phase angles
tv1=0;
tv2=-%pi/6;

//Taking v1 as reference voltage
v1=110*(expm(%i*tv1));
v2=80*(expm(%i*tv2));

Vs=v1+v2;//Sum
Vd=v1-v2;//Difference

ts=atand(imag(Vs)/real(Vs));
td=atand(imag(Vd)/real(Vd));

printf('i) The sum = %g sin(wt + (%g(degrees))) V\n',abs(Vs),ts)
printf('i) The difference = %g sin(wt + (%g(degrees))) V\n',abs(Vd),td)
