//Example 8_8
clc();
clear;
//To find out how long does the sun take to complete one revolution
ra_rb=10^5
noofrev=1/25    //units in rev/day
wafter=(ra_rb)^2*(noofrev)
t=86400   //units in sec
time=t/wafter   //units in sec
printf("The sun would take for one revolution in time=")
disp(time)
printf("sec")
