clc;
clear;
T0=288;//K
p0=101;//kPa(abs)
l=2;//m
D=0.1;//m
f=0.02;
k=1.4;
x=f*l/D;
Tratio=2/(k+1);//where Tratio is Tcritical/T0
Tcritical=Tratio*T0;//K = T2
Vcritical=(286.9*Tcritical*k)^0.5;//m/sec = V2
//from value of x, the following are found
Ma=0.63;
Trat=1.1;//where Trat=T1/Tcritical
Vrat=0.66;//where Vrat=V1/Vcritical
prat=1.7;//where prat=p1/pcritical
pratio=1.16;//where pratio=p0,1/p0critical
//from value of Ma, the following are found
Tfraction=0.93;//whereTfraction=T1/T0
pfraction=0.76;//where pfraction=p1/p0,1
dfraction=0.83;//where dfraction=d1/d0,1
//hence,
V1=Vrat*Vcritical;//m/sec
d1=dfraction*(1.23);//kg/(m^3)
m=d1*%pi*(D^2)*V1/4;//kg/sec
T1=Tfraction*T0;//K
p1=pfraction*p0;//kPa(abs)
T01=T0;//K and T01=T02
p01=p0;//kPa(abs)
p2=(1/prat)*(pfraction)*p01;//kpa(abs)
p02=(1/pratio)*p01;//kPa(abs)
disp("K",Tcritical,"Critical temperature=")
disp("m/sec",Vcritical,"Critical velocity=")
disp("m/sec",V1,"Velocity at inlet=")
disp("kg/sec",m,"Maximum mass flowrate=")
disp("K",T1,"Temperature at inlet=")
disp("kPa(abs)",p1,"Pressure at inlet=")
disp("K",T01,"stagnation temperature at inlet and exit=")
disp("kPa(abs)",p01,"The stagnation pressure at inlet=")
disp("kPa(abs)",p2,"Pressure at exit=")
disp("kPa(abs)",p02,"The stagnation pressure at exit=")
