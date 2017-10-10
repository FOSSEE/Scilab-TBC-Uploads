clc
clear
//INPUT DATA
p1=1;//initial pressure in bar
pd=12;//delivery pressure in bar
R=0.287;//gas constant
t1=310;//temperature in K
m=1;//mass of air
cp=1.005;//specific pressure
n=1.4;//index of compressor

//CALCULATIONS
p2=sqrt(p1*pd);//Intermediate pressure in bar
v1=R*t1/(p1*10^2);//Volume in m^3
t2=t1*((p2/p1)^((n-1)/n));//temperature in K
Qc=m*cp*(t2-t1);//Heat rejected in the intercooler per kg of air

//OUTPUT
printf('(i)Heat rejected in the intercooler per kg of air is %3.2f kW',Qc)



