//Example 5.6
clc;
clear;
close;
format('v',8);
//Given data :
D1=1.25;//meter
D2=0.625;//meter
slope=100;
L=300;///meter
g=9.81;//constant
Z12=L/slope;//meter
Q=100;//litres/sec
Q=Q*10^-3;//m^3/sec
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
v1=Q/A1;//m/s
v2=Q/A2;//m/s
p1=100;//kN/m^2
//Higher End : 
w=9.81;//kN/m^3
Phead=p1/w;//meter
Vhead=v1^2/2/g;//meter
//Lower End : 
w=9.81;//kN/m^3
//Phead=p1/w;//meter
Vhead=v2^2/2/g;//meter
p2=(Z12+v1^2/2/g+p1/w-v2^2/2/g)*w;//kN/m^2(By Bernoulli's theorem)
disp(p2,"Pressure at the lower end in kN per m^2 : ");
