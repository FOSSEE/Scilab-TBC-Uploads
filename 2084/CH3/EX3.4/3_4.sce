//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.4
//calculation of average velocity of the tip of minute hand in a table clock

//given data
R=4; //length(in cm) of the minute hand = radius(in cm) of the circle representing the clock
t1=1800; //time(in second) elapsed between 6.00 a.m and 6.30 a.m        30*60
t2=45000; //time(in second) elapsed between 6.00 a.m and 6.30 p.m       (12*60*60) + (30*60)

//calculation
vav1=(2*R)/t1; //average velocity(in cm/s) in first case
vav2=(2*R)/t2; //average velocity(in cm/s) in second case

disp(vav1,'average velocity(in cm/s) of the tip of minute hand in time elapsed between 6.00 a.m and 6.30 a.m is');
disp(vav2,'average velocity(in cm/s) of the tip of minute hand in time elapsed between 6.00 a.m and 6.30 p.m is');
