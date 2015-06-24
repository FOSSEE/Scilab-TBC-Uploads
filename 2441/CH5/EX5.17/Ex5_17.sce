//Example 5.17
clc;clear;close;
format('v',6);
KE=1500;//MJ
Pin=5;//MW
f=50;//Hz
t=1;//sec
delKE=Pin*t;////MJ///due to power inputs
fnew=sqrt((KE+delKE)/KE) *f;//Hz
delf=fnew-f;///Hz/second
disp(delf,"Frequency increase rate(Hz/sec)");
