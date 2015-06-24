//Example 8// time interval
clc;
clear;
close;
q=5*10^4;//quality factor
x=1/10;//
fr=300;//second^-1
to=q/(2*%pi*fr);//second
xm=((to*log(10)));//seconds
disp(xm,"time interval is,(seconds)=")
