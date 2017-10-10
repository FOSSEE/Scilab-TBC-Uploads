//chapter 18 Ex 7

clc;
clear;
close;
l1=100; l2=120; s1=72; s2=54;
sRelative=(s1-s2)*5/18;     //Addition of speeds since in opposite direction
tPass=(l1+l2)/sRelative;
printf("The time taken by trians to pass each other is %d sec",tPass);
