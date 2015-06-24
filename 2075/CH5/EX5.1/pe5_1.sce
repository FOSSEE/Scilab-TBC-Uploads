//example 5.1
clc; funcprot(0);
clf()
//initialization of variable
Vth=3.6;
Vgs=4;//voltage
//volt change beyond 3.6 causes a major increase in Id as it is cut off voltage
printf('Id=0 from 0 to 2 so not shown in the graph')
x=linspace(2,3.6,300);
y=(-2.5*(x-3.6))^.5;
plot(x,y)
xtitle('Vgs vs Id','Vgs','Id');
clear()
