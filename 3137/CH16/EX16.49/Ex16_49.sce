//Initilization of variables
m=100 //kg
mr=20 //kg
w=8 //rad/s
l1=300 //mm
l2=600 //mm
g=9.8 //m/s^2
//Calculations
r_bar=(mr*l1+m*750)/120 //mm
I=(1/3)*mr*(l2/1000)^2+(2/5)*m*(l1/2000)^2+m*(0.75)^2 //kg.m^2
alpha=(m+mr)*g*(r_bar/1000)/I //rad/s^2
On=(m+mr)*(r_bar/1000)*w^2 //N
Ot=((m+mr)*(r_bar/1000)*alpha)-(m+mr)*g //N
//Result
clc
printf('The angular acceleration is %f rad/s^2 and On=%f N and Ot=%f N',alpha,On,Ot)
//Due to decimal accuracy there is discrepancy in answers with the textbook

