clear;
clc;
close;

//Get the corresponding matrix equation.

A = [1 1;4 -2]

[R,E]=spec(A)

//where E corresponds to eigen values
//And R corresponds to eigen vectors.

//Note that 0.9701425 = -4*0.2425356
//And we can assume 0.7071068 to be 1.

