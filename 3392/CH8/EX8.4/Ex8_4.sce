clc
// initialization of variables
clear
b=300 //mm
h=500 //mm
t1=20 //mm
t2=10 //mm
t3=t2
Ix=687.5e+06 //mm^4
q_P=b*t2*h/2
q_Q=q_P+h/2*t1*h/4
q_S=h/2*t3*h/4
q_A=-1/(h/t1+b/t2+h/t3+b/t2)*((-q_P-2/3*(q_Q-q_P))*h/t1-q_P/2*b/t2+2/3*q_S*h/t3-q_P/2*b/t2)
e=1/Ix*((444.4+2/3*625)*b*h+444.4/2*177.76*h-q_A/(1000*2)*122.24*h)
V1=(q_P-q_A+2/3*(q_Q-q_P))*h
V2=(q_A+2/3*q_S)*h
V=V1+V2
printf('e = %d mm',e*10^3)
printf('\n V = %d kN',V/1000)
