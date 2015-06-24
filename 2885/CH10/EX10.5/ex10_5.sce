//Calculate the gain with and without feedback and feedback factor
clear;
clc;
//soltion
//given

Vo_=5;//V         //output voltage
Vi=0.2;//V    //input with feedback
Vi_=0.05;//V   //input without feedback
A=Vo_/Vi_;
Af=Vo_/Vi;
printf("The gain without feedback is %.0f\n",A);
printf("The gain with feedback is %.0f\n",Af);
B=(A/Af-1)/A;
printf("The feedback factor= %.0f percent",B*100);
