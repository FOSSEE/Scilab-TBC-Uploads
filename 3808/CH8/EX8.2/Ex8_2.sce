//Chapter 08: Advanced Counting Techniques

clc;
clear;

no_cs=25                       //no of students majoring in computer science
no_math=13                  //no of students majoring in mathematics
no_mathcs=8                //no of students majoring in computer science and mathematics

aub=no_cs+no_math-no_mathcs

mprintf("The total no of students in the class is %d",aub)
