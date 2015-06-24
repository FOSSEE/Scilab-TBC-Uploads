
clc;
clear;
close;
//ex(1).1,2,4,8,...
commom_ratio=4/2
//ex(2). 1,1/2,1/4,1/8,....
common_ratio=(1/4)/(1/2)
//ex(3). 2,-6,18,-54
common_ratio=-6/2
//ex(4). R,R^2,R^3,R^4....
R=poly(0,'R');
common_ratio=R^2/R
