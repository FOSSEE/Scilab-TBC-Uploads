clc;
clear;
z=1000;//m
Ma=1.5;
T=20;//degree C
//alpha=atan(z/x), x=V*t,and Ma=(1/sin(alpha)); where alpha is the angle of the Mach cone
//V=Ma*c
c=343.3;//m/s found from the value of temperature
V=Ma*c;//m/sec
t=z/(Ma*c*tan(asin(1/Ma)));//sec
disp("sec",t,"The number of seconds to wait after the plane passes over-head before it is heard=")
Mach=0.01:0.01:4;
count=1;
for i=0.01:0.01:4
    time(count)=z/(i*c*tan(asin(1/i)));
    count=count+1;
end
plot2d(Mach,time,rect=[0,0,4,3])
xtitle("t vs Ma","Ma","t, sec")
