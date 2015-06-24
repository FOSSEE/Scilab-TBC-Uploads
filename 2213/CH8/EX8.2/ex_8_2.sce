//Example 8.2: SPEED-TORQUE GRAPH
clc;
clear;
close;
v=600;//in volts
rm=0.8;//in ohms
N1=600;//
Ia=[20;40;60;80];//in amperes
EMF=[215;381;485;550]
for i=1:4
    eb(i)= v-(Ia(i))*rm;//
    N(i)=(N1/EMF(i))*eb(i);//
    T(i)=(9.55*eb(i)*Ia(i))/(N(i));//
    disp("speed in rpm is for current "+string(Ia(i))+"  amperes "+string(round(N(i)))+" RPM and Torque in N-m is "+string(T(i))+"")
end
plot2d(T,N)
xlabel("TORQUE ,T IN Nm")
ylabel("SPEED ,N IN RPM")
xtitle("Speed-torque curve")
