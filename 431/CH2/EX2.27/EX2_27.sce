//Calculating the efficiency of motor
//Chapter 2
//Example 2.27
//page 128
clear;
clc;
disp("Example 2.27")
N=960;...........................//speed in rpm
F=23;............................//effictive load in kgf
r=45/2;...............................//radius of the drum
printf("radius of the drum=%fcm",r)
pi=3.14;
OP=(2*pi*N*F*r*9.81)/(60*100);
printf("\noutput power=%fW",OP)
Vi=230;..................//motor input in volts
Ci=28;.......................//input current in amperes
IP=(Vi*Ci);
printf("\ninput power =%fW",IP)
Effi=(OP/IP)*100;
printf("\nEfficiency of the motor=%fpercent",Effi)