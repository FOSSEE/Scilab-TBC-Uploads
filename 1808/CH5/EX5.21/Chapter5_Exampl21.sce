clc
clear
//INPUT DATA
p1=1;//initial pressure in bar
v1=2;//volume in m^3
R=0.287;//gas constant
t1=288;//temperature in K
p2=8;//final pressure in bar
t2=313;//final temperature in K
d=14;//displacement in m^3/min
T=70;//time in seconds

//CALCULATIONS
m1=p1*10^2*v1/(R*t1);//initial mass in kg
m2=p2*10^2*v1/(R*t2);//initial mass in kg 
m=m2-m1;//weight of air compressed in kg
va=m*R*t1/(p1*10^2);//free volume in m^3
vs=d*T/60;//swept volume in m^3
nv=(va/vs)*100;//Volumetric efficiency in percentage

//OUTPUT
printf('(i)Volumetric efficiency is %3.2f percentage ',nv)
 
 
 
 
 
