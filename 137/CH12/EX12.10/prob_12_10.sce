//page 567
//prob 12.10
// to calculate |m|
clc;
m0=0;m1=50;
m=integrate('(m*(%e^-((m^2)/2)))','m',m0,m1);//assuming 6m=1
disp((sqrt(2/%pi)*m),'value of |m|');