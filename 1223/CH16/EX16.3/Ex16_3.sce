clear;
clc;
//Example 16.3
Vdd=5;
Vtnd=0.8;
Vtnl=0.8;
Kn=35;
Vo=0.1;
Vi=4.2;
//W/L=Y
yl=0.5;
//Kd/Kl=x
x=(Vdd-Vo-Vtnl)^2/(2*Vo*(Vi-Vtnd)-Vo^2);
printf('\nKd/Kl=%.2f\n',x)
//Kd/Kl=yd/yl
yd=12.6
yl=0.5
iD=Kn*yl*(Vdd-Vo-Vtnl)^2/2;
printf('\ndrain current =%.2f microA\n',iD)
P=iD*Vdd;
printf('\npower dissipation=%.2f microW\n',P)
