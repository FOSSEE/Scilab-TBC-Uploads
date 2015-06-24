//Calculating the running speed and frequency of the rotor magnet current
//Chapter 4
//Example 4.8
//page 298
clear;
clc; 
disp("Example 4.8")
f=50;.................//frequency of induction motor
P=4;.................//pole
Ns=(120*f)/P;
S=3;..................//slip percent
Nr=Ns-((Ns*S)/100)
fr=(S*f)/100;
printf("synchronous speed=%frpm",Ns)
printf("\nspeed of running motor=%frpm",Nr)
printf("\nrotor frequency=%fHz",fr)