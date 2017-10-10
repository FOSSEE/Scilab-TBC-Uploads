//Example number 3.1, Page number 45

clc;clear;
close;

//Variable declaration
a=1;
b=1/2;
c=3;      //intercepts
//Calculation
h=int(c/a);
k=int(c/b);
l=int(c/c);     //smiller indices
//Result
printf("miller indices are (%d,%d,%d)",h,k,l)
