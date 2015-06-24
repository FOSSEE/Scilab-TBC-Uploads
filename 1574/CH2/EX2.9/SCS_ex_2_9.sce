clc;
// Chapter 2 Switched communication systems
//Example 2.9,page no 129
//given
N=5//no of switches
A=0.9//traffic offered 
//grade of service B=(A^N/N!)/(1+A+A^2/2!+A^3/3!+...+A^N/N!)
//here
B=(A^N/factorial(N))/(1+A+(A^2/factorial(2))+(A^3/factorial(3))+(A^4/factorial(4))+(A^5/factorial(5)))
mprintf('grade of service is: %f\n',B)
Tl=A*B//traffic lost
mprintf('traffic lost is:%f',Tl)
