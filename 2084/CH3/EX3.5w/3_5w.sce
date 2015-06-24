//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.5w
//calculation of acceleration and distance travelled

//given data
v1=100//speed1(in m/s)
v2=150//speed2(in m/s)
t=1//change in time (in s)

//calculation
a=(v2-v1)/t;//formula of acceleration
x=((v2*v2)-(v1*v1))/(2*a);//distance travelled in (t+1)th second

printf('acceleration of the particle is %3.2f m/s^2',a)
printf('\ndistance travelled in (t+1)th second is %3.2f m',x)
