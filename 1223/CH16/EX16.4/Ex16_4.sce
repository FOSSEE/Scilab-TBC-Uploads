clear;
clc;
//Example 16.4
Vdd=5;
Vtnd=0.8;
Vtnl=-2;
Kn=35;
Vo=0.1;
Vi=5;
//W/L=Y
yl=0.5;
//Kd/Kl=x
x=(-Vtnl)^2/(2*Vo*(Vi-Vtnd)-Vo^2);
printf('\nKd/Kl=%.2f\n',x)
//Kd/Kl=yd/yl
yd=2.41
yl=0.5
iD=Kn*yl*(-Vtnl)^2/2;
printf('\ndrain current=%.2f microA\n',iD)
P=iD*Vdd;
printf('\npower dissipation =%.2f microW\n',P)
