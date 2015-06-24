clc
clear
//input
r100=6.9//resistence of steam
r0=5.8 //resistece of ice
t=550 //temperature
//calculation
r=(t*(r100-r0))/100 +5.8//platinum resistance thermometre
//output
printf("the resistence is %3.3f ohm",r)
