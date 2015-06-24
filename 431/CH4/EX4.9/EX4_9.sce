//Calculating the running speed and frequency of the rotor magnet current
//Chapter 4
//Example 4.9
//page 299
clear;
clc; 
disp("Example 4.9")
fr=2;.............................//frequency of motor induced emf in hertz
f=50;.............................//frequency of induction motor in hertz
S=(fr/f)*100;................//slip percent
P=6;..............................//pole
Ns=(120*f)/P;
Nr=Ns-((Ns*S)/100);
printf("percentage slip=%fpercent",S)
printf("\nrotor speed=%frpm",Nr)