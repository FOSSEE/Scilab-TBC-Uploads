clc
clear
//INPUT DATA
n=1.4;//index of compression
m=0.1436;//mass of air
R=0.287;//gas constant
t1=283;//temperature in K
t2=303;//temperature in K
p1=1;//pressure in bar
pd=30;//delivery pressure in bar
v1=0.1167;//volume in m^3/s
nm=0.9;//mechanical efficiency in percentage

//CALCULATIONS
ip=(n/(n-1))*m*R*((2*sqrt(t1*t2)*((pd/p1)^((n-1)/(2*n))))-(t1+t2));//power required for a compound air compressor
bp=ip/nm;//Brake power in kW

//OUTPUT
printf('(i)power required for a compound air compressor %3.4f kW \n (ii)Brake power is %3.2f kW',ip,bp)







