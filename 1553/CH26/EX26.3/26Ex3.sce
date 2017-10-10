//Chapter 26 Ex 3

clc;
close;
clear;
t1=190; t2=200;    //converted into seconds
dist1=1000;     //converted into kilometers
dist2=(dist1*(t2-t1))/t2;
mprintf("A beats B by %d meters",dist2);
