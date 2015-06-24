//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 1.4\n\n\n");
// Chapter 1: Fundamental Concepts
// Problem 1.4 (page no. 21) 
// Solution

printf("Solution for (a)\n");
//given
M=10 //Unit:kg //mass of body;
g=9.5 //Unit:m/s^2 //the local acceleration of gravity
W=M*g; //W=the weight of the body; //Unit:Newton // 1 N= 1 kg*m/s^2
printf("The weight of the body is %f N\n\n",W);

printf("Solution for (b)\n");
//Given
F=10; //Unit:Newton //Horizontal Force
a=F/M; //newton's second law of motion
printf("The horizontal acceleration of the body is %f m/s^2\n",a);
