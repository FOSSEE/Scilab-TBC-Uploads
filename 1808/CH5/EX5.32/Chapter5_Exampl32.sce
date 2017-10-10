clc
clear
//INPUT DATA
v1=10;//volume of air handled in m^3/min
n=1.4;//index of compression
m=1;//mass of air
R=0.287;//gas constant
t1=293;//initial temperature in K
p1=1;//pressure in bar
P2=2;//discharge presuure in bar
t21=298;//temperature in K
pd=6;//discharge pressure

//CALCULATIONS
wd=(n/(n-1))*m*R*t1*(((P2/p1)^((n-1)/n))-1)+(n/(n-1))*R*t21*(((pd/P2)^((n-1)/n))-1);//work done in kJ/kg
m=p1*10^2*v1/(R*t1);//mass flow rate in kg/min
ip1=wd*(m/60);//indicated power in kW
p2=sqrt(p1*pd);//Receiver pressure for best efficiency
ip2=2*(n/(n-1))*(m/60)*R*t1*(((pd/p1)^((n-1)/(2*n)))-1);//Power required for optimum conditions

//OUTPUT
printf('(i)power required is %3.3f kW \n (ii)Receiver pressure for the best efficiency %3.4f bar \n (iii)Power required for optimum conditions is %3.3f kW ',ip1,p2,ip2)
