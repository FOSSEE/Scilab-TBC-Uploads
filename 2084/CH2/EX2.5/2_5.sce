//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.5
//calculation of angle between two vectors from known value of their cross product

//given data
C=15; //magnitude(in unit) of cross product of two vectors,C=|A*B|
A=5; //magnitude(in unit) of A vector
B=6; //magnitude(in unit) of B vector
//calculation
theta=asind(C/(A*B)); //formula for cross product 

printf("angle(in degree) between the given two vectors is %d or %d",theta,180-theta);
