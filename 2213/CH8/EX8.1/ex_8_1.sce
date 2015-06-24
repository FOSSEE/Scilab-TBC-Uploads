//Example 8.1: Motor speed 
clc;
clear;
close;
v=230;//in volts
rm=0.3;//in ohms
Ia=[5;10;15;20;25;30;35;40];//in amperes
T=[20;50;100;155;215;290;360;430];//
for i=1:8
    eb(i)= v-(Ia(i))*rm;//
    N(i)=(9.55*eb(i)*Ia(i))/(T(i));//
    disp("speed in rpm is for current "+string(Ia(i))+"  amperes "+string(round(N(i)))+" RPM")
end
plot2d(Ia,N)
xlabel("ARMATURE CURRENT ,Ia IN AMPS")
ylabel("SPEED ,N IN RPM")
xtitle("Spped-Armature current characteristic")
