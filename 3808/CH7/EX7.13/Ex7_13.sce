//Chapter 07: Discrete Probability

clc;
clear;

times=8    //time flipped
o1=3           //occurrence of 3 heads
o2=2           //occurrence of 2 heads
o3=2           //occurrence of 2 heads
o4=2           //occurrence of 2 heads
o5=1           //occurrence of 1 head
o6=1           //occurrence of 1 head
o7=1           //occurrence of 1 head
o8=0           //occurrence of 0 heads
peo=1/times         //probability of each outcome
Ex=peo*(o1+o2+o3+o4+o5+o6+o7+o8)

disp(Ex,'Expected heads when fair coin is flipped 3 times')
