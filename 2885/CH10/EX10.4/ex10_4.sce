//Calculate the internal gain and percentage of output fed back to input
clear;
clc;
//soltion
//given

Af=80;      //gain of feedback amplifier
Vi=0.05;//V    //input with feedback
Vi_=4*10^-3;//V   //input without feedback
Vo_=Af*Vi;
A=Vo_/Vi_;
printf("The internal gain is %.0f\n",A);
B=(A/Af-1)/A;
printf("The percentage of output fed back to input= %.2f percent",B*100);
