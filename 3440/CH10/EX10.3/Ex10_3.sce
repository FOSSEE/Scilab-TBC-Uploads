clc

Ip=3*10^-4//mA
I0=0.2//*
h=6.62*10^-34//Jsec
q=1.6*10^-19//C
c=3*10^8//m/sec
lambda=80*10^-9//m
Popt=%pi*(0.03)^2*I0
disp(Popt,"Popt in Watt is= ")
R=Ip/Popt
disp(R,"R in A/W is= ")
n=R*(h*c/(q*lambda))
disp(n,"n in % is= ")  //textbook ans is wrong
