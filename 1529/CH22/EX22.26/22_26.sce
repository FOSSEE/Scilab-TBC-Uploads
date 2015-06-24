//Chapter 22, Problem 26
clc;
T=15;                       //torque
V=200;                      //supply voltage
n1=1200/60;                 //speed of motor
n=80;                       //efficiency
I=((T*2*%pi*n1)/(V*n))*100;         //current supplied
printf("Current supplied = %.2f A",I);
