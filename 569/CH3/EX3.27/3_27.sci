//to find standard deviation and probability of error

clc;
p=.2;
x=.8;
t=.5025;
sd=x/t;
disp(sd,'stndard deviation');
x=1.2;
t=x/sd;
p=2*.2743;
disp(p,'probability of error');