// Example 3.21: interplanar spacing d220
clc;
clear;
close;
format('v',5)
a=1;//constant assume
a1=[1;0;0];//lattice planes
a2=[1;1;0];//lattice planes
a3=[1;1;1];//lattice planes
d100=a/(sqrt(a1(1,1)^2+a1(2,1)^2+a1(3,1)^2));//interplanar distance between (100)planes
d110=a/(sqrt(a2(1,1)^2+a2(2,1)^2+a2(3,1)^2));//interplanar distance between (110)planes
d111=a/(sqrt(a3(1,1)^2+a3(2,1)^2+a3(3,1)^2));//interplanar distance between (111)planes
disp("ratio of interplanar distances is "+string(d100)+":"+string(d110)+":"+string(d111)+"")
