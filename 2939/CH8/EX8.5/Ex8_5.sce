
// Ex8_5
clc;
// Given:
ma1=3600;// counts in 3 min
mb1=2400;// counts in 5 min
mab1=9900;// counts in 6 min

// Solution:
ma=ma1/3;
mb=mb1/5;
mab=mab1/6;

t1=(ma+mb-mab)/(mab^2-ma^2-mb^2);
t2=t1*60;// in seconds
t=t2*1000000;// in microseconds
printf("The resolving time of the given system in microseconds is = %f",t)
