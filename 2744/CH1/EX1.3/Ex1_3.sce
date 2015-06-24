clear all;
clc;
D = 8;//external diameter in inches 
d = 6;//internal diameter in inches
sigma = 36;//ultimate stress in tons/in^2
n = 6;//safety factor
A = 0.25*%pi*(D^2 - d^2);//Area of section in in^2
P =  sigma*A; //crushing load for the column in tons 
P_safe = P/n ;//safe load in tons
printf('Safe load = %d tons',P_safe); 
//there is an error in the answer given in textbook.
