//caption- for calculating distribution factor
//Chapter 5
//example 5.1
//page 424
clear;
clc;
disp("example 5.1"); 
printf("\n");
slots=18;
p=2;             //nmber of poles
ph=3;            //three phase winding
SA=(360/slots);  //slot angle
m=slots/(p*ph);  //m=nmber of slots per pole per phase
printf("number of slots per pole per phase,m=%d\n",m);
printf("emfs of the oils of each phase will have a time-phase difference of  %d degree mechanical \n",SA);
k_d=sind((m*SA)/2)/(m*sind(SA/2));
printf("distribution factor=%f",k_d);
