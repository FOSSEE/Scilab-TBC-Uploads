//example 2.16
//page 90
clc; funcprot(0);
//initialisation of variable
Io=15*4^3/12;//moment of inertia
V=15*4*2.71;
W=1739.2;
GB=3/2-2.71/2;
pi=3.14;
theta=6/180*pi;
//part1
MG=Io/V-GB;
disp(MG,"metacentric height(m)");
//part2
M=W*MG*sin(theta);;
disp(M,"righting moment(kNm)");
clear
