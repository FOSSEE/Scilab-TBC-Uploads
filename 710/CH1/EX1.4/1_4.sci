clc();
clear;
//To determine the average absorption coefficients of surfaces
l=25;                          //length of the hall in m
b=20;                         //breadth of the hall in m
h=10;                        //height of the hall in m
V=l*b*h;                     //Volume of the hall
T=4;                         //Reverberation time in s
A=(0.161*V)/T ;             //Total absorption time in m^2 sabine
b=A/(2*((l*b)+(b*h)+(l*h))) //b is absorption co-efficient
printf("The average absorption co-efficients of surfaces is %f",b);
