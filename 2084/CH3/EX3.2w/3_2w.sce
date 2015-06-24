//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.2w
//calculation of average speed and average velocity

//given data
w=40//length(in ft)of the wall 
t=50//time(in min) taken
rnd=10//number of rounds taken

//calculation
dist=2*w*rnd;
avgspeed=dist/t;
avgvelocity=0//average velocity(in ft/min) since displacement=0   as he is at the same door from where he has started

printf('the average speed of the teacher is %3.2f ft/min and the average velocity is %3.2f ft/min',avgspeed,avgvelocity);
