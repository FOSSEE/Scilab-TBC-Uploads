clc;
clear all;
LIS=1200;//given lines in system
BK=0.07;//blanking time
K=0.7;//kell factor
//part a
LLB=LIS*BK;//lines lost in blanking
disp(LLB,'lines lost in blanling are');
//part b
AL=LIS-LLB;//Active lines
disp(AL,'active lines are');
//part c
LVR=K*AL;//lines of vertical resolution
disp(LVR,'lines of vertical resolution are');
