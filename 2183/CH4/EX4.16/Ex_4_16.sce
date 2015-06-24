// Example 4.16//bit rate
clc;
clear;
close;
pmc=0.5;//ps/sqrt(km)
l=100;//km
br=(1/(4*pmc*sqrt(l)));//
disp(br*10^3,"bit rate is ,(Gbps)=")
