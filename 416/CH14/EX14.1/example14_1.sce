clc
clear
disp('example 14.1')
p=100  //rating of alternater
sd=0.04 //speed of alrternator drops 
df=-0.1  //change in frequency and drops so -ve
f=50    //frequency is 50hz
r=sd*f/p  //r in hz/MW
dp=-(df)/r 
printf("speed regulation of alternator is %.2fHz/MW \n change in power output %dMW",r,dp)