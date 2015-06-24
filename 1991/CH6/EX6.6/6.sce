clc
clear
//input
p1=1.01*10^5//initial pressure
t2=135+273//final temperature
t1=273//initial temperature
d=2.8 //density
//calculation
p2=p1*t2/t1//pressure law
p=(3*p2/2.8)^0.5//kinetic theory
//output
printf("rms speed of gas molecule is %3.0f m/s",p)
