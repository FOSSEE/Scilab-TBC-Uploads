// Example 1.35 Find the values of following probabilites
clc;
clear;
A= 1/2 ; 
B= 1/3; 
AB= 1/4;
//disp(AB,"P(AB)=", B, "P(B)=",A,"P(A)=");
disp((1-A)+B-(B-AB),"P(~A + B)=",1-(A+B-AB),"P(~A~B)",B-AB,"P(~AB)",AB/B,"P(A/B)",A+B-AB,"P(A+B)=",1-A,"P(~A)");
disp("Events A and B are neither mutually exclusive nor exhaustive nor equally likely nor independent ")
