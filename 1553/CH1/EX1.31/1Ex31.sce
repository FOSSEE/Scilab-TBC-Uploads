//chapter 1 Ex 31

clc;
clear;
close;
//This problem can be solved using Arithmetic Progression formula
a=2; d=2; //since even numbers, the difference is 2
l=74; //given less than 75
n=l/2;//number of elements in series, divided by 2 since even numbers
Sum=n/2*(a+l);
printf("The sum of even numbers less than 75 is %d",Sum);
