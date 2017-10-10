//Ch25_Ex5
clc;
clear;
close;
lt=200; bt=150; //dimensions of tank
lp=1.5; bp=1.25; //dimensions of pipe
rise=2
speed=20*1000/60; //converting speed into meter/min
volreq=lt*bt*rise;
length1min=speed*1; //length of water column flown in 1 min
vol1min=lp*bp*length1min;
time=volreq/vol1min;
mprintf("The time required is %d min",time);
