
clc
clear
//Input data
gh=35//Gross head in m
md=2//Mean diameter in m
N=145//Speed in rpm
a=30//Angle in degrees
oa=28//Outlet angle in degrees
x=7//Percentage of gross head lost
y=8//Reduction in relative velocity in percent

//Calculations
H=((100-x)/100)*gh//Net haed in m
V1=sqrt(2*9.81*H)//Velocity in m/s
Vb=(3.14*md*N)/60//Velocity in m/s
b1=atand((V1*sind(a))/((V1*cosd(a))-Vb))//Angle in degrees
Vr1=((V1*sind(a))/sind(b1))//Velocity in m/s
Vr2=((100-y)/100)*Vr1//Velocity in m/s
Vw1=(V1*cosd(a))//Velocity in m/s
Vw2=(Vb-(Vr2*cosd(oa)))//Velocity in m/s
E=((Vb*(Vw1-Vw2))/9.81)//Workdone in kg.m/kg
nb=(E/gh)*100//Hydraulic efficiency in percent

//Output
printf('Blade angle at inlet is %3.0f degrees \n Hydraulic efficiency is %3.0f percent',b1,nb)
