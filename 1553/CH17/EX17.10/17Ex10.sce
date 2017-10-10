//chapter 17 Ex 10

clc;
clear;
close;
s1=65; s2=35;
d=390;
t=(390+s2)/(s1+s2);
t_hr=round(t);
t_min=(modulo(t,t_hr))*60;
t1=10;
t2_hr=t1+t_hr;
printf("They meet at %d:%d hour",t2_hr,t_min);
