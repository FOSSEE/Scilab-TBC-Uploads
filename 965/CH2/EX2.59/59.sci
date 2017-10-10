clc;
clear all;
disp("Midpoint temperature calculation")
r1=50/(2*1000);//m
r2=25/(2*1000);//m
t1=227;// degree C
t2=27;// degree C
k=40;// W/(m*C)
L=0.2;//m
Q=k*3.1416*r1*r2*(t1-t2)/L;
disp("W",Q," Heat flow rate = ")
disp("Temperature at the midpoint of the rod")
//Q=3.1416*(r1+r2)*r2*k*(t-t2)/L
t=t2+Q*L/(3.1416*(r1+r2)*r2*k);
disp("degree C",t,"Temperature at the midpoint of the rod t =")
 
