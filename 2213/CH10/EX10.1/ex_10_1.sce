//Example 10.1:braking torque
clc;
clear;
close;
I=[50;100;150;200;250];//
sp=[73.6;48;41.1;37.3;35.2];
T=[150;525;930;1335;1750];
v=600;//in volts
rm=0.6;//
eb=v-(I(2)*rm);//in volts
rh=3;//in ohms
tr=rh+rm;//in ohms
i=eb/tr;//in amperes
tr=T(3);//
disp(tr,"braking torque is (N-m)")
