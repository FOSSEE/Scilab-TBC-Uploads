//Example 21 // frequency ,energy and maximum velocity
clc;
clear;
close;
c=1;//N-m 
m1=6;//gm
m2=2;//gm
mu=((m1*m2)/(m1+m2))*10^-3;//kg
fr=((1/(2*%pi))*sqrt(c/mu));//vibrations/sec
disp(fr,"frequency of oscillations is ,(vibrations/s)=")
td= 1+(1/3);//cm
e=((1/2)*c*(td*10^-2)^2);//joule
disp(e,"energy is,(joule)=")
y=((1/2)*m2*10^-3)+((1/2)*(1/3)^2*m1*10^-3);//
v1=sqrt((e/y));//m/sec
disp(v1,"maximum velocity of smaller mass is,(m/seconds)=")
//velocity is calculated wrong in the book
