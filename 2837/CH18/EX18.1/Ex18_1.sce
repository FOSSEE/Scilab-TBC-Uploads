clc
clear
//Initalization of variables
q=200 //cfm
p2=90 //psia
p1=14.5 //psia
n=1.36
//calculations
hpp=n/(n-1) *144*p1*q/33000 *(1- (p2/p1))^((n-1)/n)
//results
printf("Theoretical horse power required = %.1f hp",hpp)
disp("The answer given in textbook is wrong. Please verify with a calculator")
