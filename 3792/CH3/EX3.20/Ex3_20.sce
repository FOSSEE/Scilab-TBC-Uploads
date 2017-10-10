// SAMPLE PROBLEM 3/20
clc;clear;funcprot(0);
// Given data
// G=(3/2)*(t^2+3)j-((2/3)*(t^3-4))k
t=2;// sec

// Calculation
F=[3*(t),2-(2*t^2)];// [j,k] lb
F_r=sqrt(F(1)^2+F(2)^2);// lb
printf("\nF=%1.0fj+(%1.0fk)lb \nF=%1.3f lb",F(1),F(2),F_r);
