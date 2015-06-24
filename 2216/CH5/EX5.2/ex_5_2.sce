// Example 5.2;//difference between propogation constant and modal birefringence
clc;
clear;
close;
format('v',6)
disp("part (a)")
bl=10;//beat length in cm
h=1;//in micro meter
db=((2*%pi)/(bl*10^-2));//in m^-1
disp(db,"difference between propogation constant in m^-1")
disp("part (b)")
format('v',8)
mb=db*((h*10^-6)/(2*%pi));//modal birefringence
disp(mb,"modal birefringence is")
//answer is approximately equal to the answer in the book
