//Calculating the speed of running motor and its slip
//Chapter 4
//Example 4.5
//page 294
clear;
clc; 
disp("Example 4.5")
f=50;...................//induction motor frequency in hertz
fr=1.5;.................//rotor frequency in hertz
S=fr/f;................//slip
P=8;...................//pole
Ns=(120*f)/P;
printf("synchronous speed=%frpm",Ns)
Nr=Ns-(S*Ns);
printf("\nmotor running speed=%frpm",Nr)
S1=S*100;
printf("\nslip percent=%fpercent",S1)