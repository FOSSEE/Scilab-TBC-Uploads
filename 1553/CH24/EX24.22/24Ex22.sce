//chapter 24 Ex 22

clc;
clear;
close;
side=20; diagonal1=24;
x=sqrt(side^2-(diagonal1/2)^2);
diagonal2=2*x;
area=(1/2)*(diagonal1*diagonal2);
mprintf("The area of rhombus is %d square cm",area);
