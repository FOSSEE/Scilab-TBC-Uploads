
// Ex8_6
clc;
// Given:
ma1=3321;// counts in 3 min
mb1=2862;// counts in 2 min
mab1=4798;// counts in 2 min
m=1080;// counts in 30 min
muk1=5126;// counts in 2 min
// Solution:
ma=ma1/3;
mb=mb1/2;
mab=mab1/2;
mbc=m/30;
muk=muk1/2;
t1=(ma+mb-mab-mbc)/(mab^2-ma^2-mb^2);// in min
t2=t1*60;// in seconds
t=t2*1000000;// in microseconds
printf("The resolving time of the given system in microseconds is = %f",t)

n=muk/(1-muk*t1);// true count rate

printf("\n The true count rate of unknown sample is = %f cpm",n)

