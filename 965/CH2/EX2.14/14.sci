clc;
clear all;
disp("steady state flux")
t1=600;// degree C
t3=300;// degree C
La=0.05;//m
Lb=0.1;//m
//kmA=0.05*(1+0.0065*(t1+t2)/2)
//kmB=0.04*(1+0.0075*(t3+t2)/2)
// q= Q/A=(t1-t2)/(La/kmA)=(t2-t3)/(Lb/kmB)
// (600-t2)/(0.05/(0.05*(1+0.0065*(600+t2)/2)))=(t2-300)/(0.1/(0.04*(1+0.0075*(300+t2)/2)))
//t2^2+294.7*t2-426315=0
t2=(-294.7+(294.7^2+4*426316)^(0.5))/2
kmA=0.05*(1+0.0065*(t1+t2)/2);// W/(m*C)
disp (kmA,"thermal conductivity of A = ")
 q=(t1-t2)/(La/kmA);
 disp ("W/m^2",q,"rate of heat transfer = ");
 
