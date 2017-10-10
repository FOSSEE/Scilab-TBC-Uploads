clc;
clear all;
disp("Heat transfer coefficient")
V =[2 5 10 20]
h =[39.5 71.2 106.5 165.3]
Dp=50/1000;//m
Dm=50/(5*1000);//m
Vp=4;//m/s
t1=140;// degree C
t2=20;// degree C
//(VD/v)m=(VD/v)p
//vm=vp
Vm=Vp*Dp/Dm;

plot2d(V,h)
xtitle("V vs h","V(m/s)","h(W/(m^2*C))")
V=Vm;
h=165.3;
disp("W/(m^2*C)",h,"heat transfer ocefficient h =")
A=3.1416*Dp*1;
Q=A*h*(t1-t2);
disp("W",Q,"rate of heat transfer per meter length of actual cylinder Q =")
