//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.1w
//calculation of average speed of the walk

//given data
v1=6//speed(in km/h) of the man
v2=8//speed(in km/h) of the man
d1=1//distance(in km) travelled at v1 speed
d2=1//distance(in km) travelled at v2 speed
d=2//given distance(in km)

//calculation
t=(v1/d1)+(v2/d2);//total time(in s) taken
vavg=d/t;//formula for average velocity

disp(vavg,'the average velocity(in km/h) of the man is');
