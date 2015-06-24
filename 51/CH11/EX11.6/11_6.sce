clc;
clear;
A=1*(10^(-4));//m^2
p1=80;//kPa(abs)
p2=40;//kPa(abs)

p0=101;//kPa(abs)
k=1.4;
//for (a)
pratio1=p1/p0;
//for this value of p1/p0, 
Math1=0.59;
Tratio1=0.94;//=Tth/T0
dratio1=0.85;//=dth/d0
Tth1=Tratio1*(288);//K
dth1=dratio1*(1.23);//kg/(m^3)
Vth1=Math1*(286.9*Tth1*k)^0.5;//m/sec
m1=(dth1*A*Vth1);//kg/sec
disp("kg/sec",m1,"a)The mass flowrate=")
//for (b)
Math2=1;
Tratio2=0.83;//=Tth/T0
dratio2=0.64;//=dth/d0
Tth2=Tratio2*(288);//K
dth2=dratio2*(1.23);//kg/(m^3)
Vth2=Math2*(286.9*Tth2*k)^0.5;//m/sec
m2=(dth2*A*Vth2);//kg/sec
disp("kg/sec",m2,"b)The mass flowrate=")