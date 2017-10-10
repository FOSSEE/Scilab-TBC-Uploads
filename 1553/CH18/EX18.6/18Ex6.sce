//chapter 18 Ex 6

clc;
clear;
close;

l1=137; l2=163; s1=42; s2=48;
sRelative=(s1+s2)*5/18;     //Addition of speeds since in opposite direction
tPass=(l1+l2)/sRelative;
printf("The time taken by trians to pass each other is %d sec",tPass);
